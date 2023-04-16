import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:trainer_promoter/src/application/providers/providers.dart';
import 'package:trainer_promoter/src/data/services/auth/auth_service.dart';
import 'package:trainer_promoter/src/domain/entities/auth/auth.dart';
import 'package:trainer_promoter/src/domain/entities/core/core.dart';
import 'package:trainer_promoter/src/presentation/pages/home/home.dart';
import 'package:trainer_promoter/src/presentation/pages/login/login_page.dart';
import 'package:trainer_promoter/src/presentation/pages/login/not_godmode_error.dart';

class RouterNotifier extends ChangeNotifier {
  RouterNotifier(this.ref) {
    ref.listen(authControllerProvider, (_, __) => notifyListeners());
  }
  final Ref ref;

  List<GoRoute> get routes => [
        GoRoute(
          path: "/",
          name: "home",
          builder: (context, state) {
            return const HomeScreen();
          },
        ),
        GoRoute(
          path: "/login",
          name: "login",
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: "/not-godmode-error",
          name: "not-godmode-error",
          builder: (context, state) => const NotGodmodeError(),
        ),
      ];

  Future<String?> redirectLogic(
      BuildContext context, GoRouterState state) async {
    final LoginState loginState = ref.read(authControllerProvider);
    final FirebaseAuth auth = ref.read(firebaseAuthProvider);

    final bool loggingIn = state.location == "/login";
    final bool goingNotGodmodeError = state.location == "/not-godmode-error";

    print(loginState);
    // return "/not-godmode-error";
    if (loginState is LoginStateNotGodmodeError) {
      print("goingNotGodmodeError: $goingNotGodmodeError");
      return "/not-godmode-error";
    }

    if (loginState is LoginStateAuthenticated) {
      try {
        final IdTokenResult tokenResult =
            await auth.currentUser!.getIdTokenResult();

        final bool godMode = tokenResult.claims != null &&
            tokenResult.claims!["godmode"] != null;

        if (!godMode && !goingNotGodmodeError) {
          return "/not-godmode-error";
        }

        if (loggingIn) return "/";
      } on FirebaseAuthException catch (err) {
        print(err);
        return "/login";
      }
    }

    if (loginState is LoginStateUnAuthenticated && !loggingIn) return "/login";

    return null;
  }
}
