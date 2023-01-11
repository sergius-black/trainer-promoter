// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unAuthenticated,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateUnAuthenticated value) unAuthenticated,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateAuthenticated value) authenticated,
    required TResult Function(LoginStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateUnAuthenticated value)? unAuthenticated,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateAuthenticated value)? authenticated,
    TResult? Function(LoginStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateUnAuthenticated value)? unAuthenticated,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateAuthenticated value)? authenticated,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginStateUnAuthenticatedCopyWith<$Res> {
  factory _$$LoginStateUnAuthenticatedCopyWith(
          _$LoginStateUnAuthenticated value,
          $Res Function(_$LoginStateUnAuthenticated) then) =
      __$$LoginStateUnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateUnAuthenticatedCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateUnAuthenticated>
    implements _$$LoginStateUnAuthenticatedCopyWith<$Res> {
  __$$LoginStateUnAuthenticatedCopyWithImpl(_$LoginStateUnAuthenticated _value,
      $Res Function(_$LoginStateUnAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateUnAuthenticated implements LoginStateUnAuthenticated {
  const _$LoginStateUnAuthenticated();

  @override
  String toString() {
    return 'LoginState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateUnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(String error) error,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unAuthenticated,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function(String error)? error,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateUnAuthenticated value) unAuthenticated,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateAuthenticated value) authenticated,
    required TResult Function(LoginStateError value) error,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateUnAuthenticated value)? unAuthenticated,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateAuthenticated value)? authenticated,
    TResult? Function(LoginStateError value)? error,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateUnAuthenticated value)? unAuthenticated,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateAuthenticated value)? authenticated,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class LoginStateUnAuthenticated implements LoginState {
  const factory LoginStateUnAuthenticated() = _$LoginStateUnAuthenticated;
}

/// @nodoc
abstract class _$$LoginStateLoadingCopyWith<$Res> {
  factory _$$LoginStateLoadingCopyWith(
          _$LoginStateLoading value, $Res Function(_$LoginStateLoading) then) =
      __$$LoginStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateLoadingCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateLoading>
    implements _$$LoginStateLoadingCopyWith<$Res> {
  __$$LoginStateLoadingCopyWithImpl(
      _$LoginStateLoading _value, $Res Function(_$LoginStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateLoading implements LoginStateLoading {
  const _$LoginStateLoading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unAuthenticated,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateUnAuthenticated value) unAuthenticated,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateAuthenticated value) authenticated,
    required TResult Function(LoginStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateUnAuthenticated value)? unAuthenticated,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateAuthenticated value)? authenticated,
    TResult? Function(LoginStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateUnAuthenticated value)? unAuthenticated,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateAuthenticated value)? authenticated,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginStateLoading implements LoginState {
  const factory LoginStateLoading() = _$LoginStateLoading;
}

/// @nodoc
abstract class _$$LoginStateAuthenticatedCopyWith<$Res> {
  factory _$$LoginStateAuthenticatedCopyWith(_$LoginStateAuthenticated value,
          $Res Function(_$LoginStateAuthenticated) then) =
      __$$LoginStateAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginStateAuthenticatedCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateAuthenticated>
    implements _$$LoginStateAuthenticatedCopyWith<$Res> {
  __$$LoginStateAuthenticatedCopyWithImpl(_$LoginStateAuthenticated _value,
      $Res Function(_$LoginStateAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoginStateAuthenticated implements LoginStateAuthenticated {
  const _$LoginStateAuthenticated();

  @override
  String toString() {
    return 'LoginState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(String error) error,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unAuthenticated,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function(String error)? error,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateUnAuthenticated value) unAuthenticated,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateAuthenticated value) authenticated,
    required TResult Function(LoginStateError value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateUnAuthenticated value)? unAuthenticated,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateAuthenticated value)? authenticated,
    TResult? Function(LoginStateError value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateUnAuthenticated value)? unAuthenticated,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateAuthenticated value)? authenticated,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class LoginStateAuthenticated implements LoginState {
  const factory LoginStateAuthenticated() = _$LoginStateAuthenticated;
}

/// @nodoc
abstract class _$$LoginStateErrorCopyWith<$Res> {
  factory _$$LoginStateErrorCopyWith(
          _$LoginStateError value, $Res Function(_$LoginStateError) then) =
      __$$LoginStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$LoginStateErrorCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginStateError>
    implements _$$LoginStateErrorCopyWith<$Res> {
  __$$LoginStateErrorCopyWithImpl(
      _$LoginStateError _value, $Res Function(_$LoginStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LoginStateError(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginStateError implements LoginStateError {
  const _$LoginStateError({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginStateError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginStateErrorCopyWith<_$LoginStateError> get copyWith =>
      __$$LoginStateErrorCopyWithImpl<_$LoginStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unAuthenticated,
    required TResult Function() loading,
    required TResult Function() authenticated,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unAuthenticated,
    TResult? Function()? loading,
    TResult? Function()? authenticated,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unAuthenticated,
    TResult Function()? loading,
    TResult Function()? authenticated,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginStateUnAuthenticated value) unAuthenticated,
    required TResult Function(LoginStateLoading value) loading,
    required TResult Function(LoginStateAuthenticated value) authenticated,
    required TResult Function(LoginStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginStateUnAuthenticated value)? unAuthenticated,
    TResult? Function(LoginStateLoading value)? loading,
    TResult? Function(LoginStateAuthenticated value)? authenticated,
    TResult? Function(LoginStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginStateUnAuthenticated value)? unAuthenticated,
    TResult Function(LoginStateLoading value)? loading,
    TResult Function(LoginStateAuthenticated value)? authenticated,
    TResult Function(LoginStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginStateError implements LoginState {
  const factory LoginStateError({required final String error}) =
      _$LoginStateError;

  String get error;
  @JsonKey(ignore: true)
  _$$LoginStateErrorCopyWith<_$LoginStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
