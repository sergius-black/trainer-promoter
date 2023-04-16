import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.unAuthenticated() = LoginStateUnAuthenticated;
  const factory LoginState.loading() = LoginStateLoading;
  const factory LoginState.authenticated() = LoginStateAuthenticated;
  const factory LoginState.notGodmodeError() = LoginStateNotGodmodeError;
  const factory LoginState.error({required String error}) = LoginStateError;
}
