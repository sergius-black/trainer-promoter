import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trainer_promoter/src/application/providers/providers.dart';
import 'package:trainer_promoter/src/domain/auth/auth.dart';

class AuthController extends StateNotifier<LoginState> {
  AuthController(this.ref) : super(const LoginState.unAuthenticated()) {
    ref.watch(authStateProvider).when(
          data: ((user) => user != null ? loggedIn() : logout()),
          error: ((error, stackTrace) => authError()),
          loading: () => initLogin(),
        );
  }
  final Ref ref;

  void initLogin() {
    state = const LoginState.loading();
  }

  void loggedIn() {
    //print user
    print(ref.read(authStateProvider).value);
    state = const LoginState.authenticated();
  }

  void logout() {
    state = const LoginState.unAuthenticated();
  }

  void authError() {
    state = const LoginState.error(error: "error");
  }
}
