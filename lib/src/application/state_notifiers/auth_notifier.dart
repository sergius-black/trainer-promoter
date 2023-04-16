import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trainer_promoter/src/application/providers/providers.dart';
import 'package:trainer_promoter/src/domain/entities/auth/auth.dart';

class AuthController extends StateNotifier<LoginState> {
  AuthController(this.ref) : super(const LoginState.unAuthenticated()) {
    ref.watch(authStateProvider).when(
          data: ((user) => user != null ? loggedIn(user) : logout()),
          error: ((error, stackTrace) => authError()),
          loading: () => initLogin(),
        );
  }
  final Ref ref;

  void initLogin() {
    state = const LoginState.loading();
  }

  void loggedIn(User user) {
    user.getIdTokenResult().then((value) {
      if (value.claims?['godmode'] != true) {
        state = const LoginState.notGodmodeError();
        ref.read(authServiceProvider).elevate();
        // logout();
      } else {
        state = const LoginState.authenticated();
      }
    });
  }

  void notGodmodeError() {
    // ref.read(authServiceProvider).elevate();
  }

  void logout() {
    state = const LoginState.unAuthenticated();
  }

  void authError() {
    state = const LoginState.error(error: "error");
  }
}
