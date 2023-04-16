// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'core.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Core {
  List<BasicUser> get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoreCopyWith<Core> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoreCopyWith<$Res> {
  factory $CoreCopyWith(Core value, $Res Function(Core) then) =
      _$CoreCopyWithImpl<$Res, Core>;
  @useResult
  $Res call({List<BasicUser> users});
}

/// @nodoc
class _$CoreCopyWithImpl<$Res, $Val extends Core>
    implements $CoreCopyWith<$Res> {
  _$CoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<BasicUser>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoreCopyWith<$Res> implements $CoreCopyWith<$Res> {
  factory _$$_CoreCopyWith(_$_Core value, $Res Function(_$_Core) then) =
      __$$_CoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BasicUser> users});
}

/// @nodoc
class __$$_CoreCopyWithImpl<$Res> extends _$CoreCopyWithImpl<$Res, _$_Core>
    implements _$$_CoreCopyWith<$Res> {
  __$$_CoreCopyWithImpl(_$_Core _value, $Res Function(_$_Core) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$_Core(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<BasicUser>,
    ));
  }
}

/// @nodoc

class _$_Core extends _Core {
  const _$_Core({final List<BasicUser> users = const []})
      : _users = users,
        super._();

  final List<BasicUser> _users;
  @override
  @JsonKey()
  List<BasicUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'Core(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Core &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoreCopyWith<_$_Core> get copyWith =>
      __$$_CoreCopyWithImpl<_$_Core>(this, _$identity);
}

abstract class _Core extends Core {
  const factory _Core({final List<BasicUser> users}) = _$_Core;
  const _Core._() : super._();

  @override
  List<BasicUser> get users;
  @override
  @JsonKey(ignore: true)
  _$$_CoreCopyWith<_$_Core> get copyWith => throw _privateConstructorUsedError;
}

BasicUser _$BasicUserFromJson(Map<String, dynamic> json) {
  return _BasicUser.fromJson(json);
}

/// @nodoc
mixin _$BasicUser {
  String get uid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  bool get trainer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasicUserCopyWith<BasicUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicUserCopyWith<$Res> {
  factory $BasicUserCopyWith(BasicUser value, $Res Function(BasicUser) then) =
      _$BasicUserCopyWithImpl<$Res, BasicUser>;
  @useResult
  $Res call({String uid, String name, String email, bool trainer});
}

/// @nodoc
class _$BasicUserCopyWithImpl<$Res, $Val extends BasicUser>
    implements $BasicUserCopyWith<$Res> {
  _$BasicUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? email = null,
    Object? trainer = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      trainer: null == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BasicUserCopyWith<$Res> implements $BasicUserCopyWith<$Res> {
  factory _$$_BasicUserCopyWith(
          _$_BasicUser value, $Res Function(_$_BasicUser) then) =
      __$$_BasicUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uid, String name, String email, bool trainer});
}

/// @nodoc
class __$$_BasicUserCopyWithImpl<$Res>
    extends _$BasicUserCopyWithImpl<$Res, _$_BasicUser>
    implements _$$_BasicUserCopyWith<$Res> {
  __$$_BasicUserCopyWithImpl(
      _$_BasicUser _value, $Res Function(_$_BasicUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? name = null,
    Object? email = null,
    Object? trainer = null,
  }) {
    return _then(_$_BasicUser(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      trainer: null == trainer
          ? _value.trainer
          : trainer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BasicUser extends _BasicUser {
  const _$_BasicUser(
      {required this.uid,
      required this.name,
      required this.email,
      required this.trainer})
      : super._();

  factory _$_BasicUser.fromJson(Map<String, dynamic> json) =>
      _$$_BasicUserFromJson(json);

  @override
  final String uid;
  @override
  final String name;
  @override
  final String email;
  @override
  final bool trainer;

  @override
  String toString() {
    return 'BasicUser(uid: $uid, name: $name, email: $email, trainer: $trainer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BasicUser &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.trainer, trainer) || other.trainer == trainer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, name, email, trainer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BasicUserCopyWith<_$_BasicUser> get copyWith =>
      __$$_BasicUserCopyWithImpl<_$_BasicUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BasicUserToJson(
      this,
    );
  }
}

abstract class _BasicUser extends BasicUser {
  const factory _BasicUser(
      {required final String uid,
      required final String name,
      required final String email,
      required final bool trainer}) = _$_BasicUser;
  const _BasicUser._() : super._();

  factory _BasicUser.fromJson(Map<String, dynamic> json) =
      _$_BasicUser.fromJson;

  @override
  String get uid;
  @override
  String get name;
  @override
  String get email;
  @override
  bool get trainer;
  @override
  @JsonKey(ignore: true)
  _$$_BasicUserCopyWith<_$_BasicUser> get copyWith =>
      throw _privateConstructorUsedError;
}
