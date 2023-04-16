// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayerFilter {
  List<BasicUser> get userBase => throw _privateConstructorUsedError;
  String get searchText => throw _privateConstructorUsedError;
  SortBy get sortBy => throw _privateConstructorUsedError;
  bool get ascendente => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PlayerFilterCopyWith<PlayerFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerFilterCopyWith<$Res> {
  factory $PlayerFilterCopyWith(
          PlayerFilter value, $Res Function(PlayerFilter) then) =
      _$PlayerFilterCopyWithImpl<$Res, PlayerFilter>;
  @useResult
  $Res call(
      {List<BasicUser> userBase,
      String searchText,
      SortBy sortBy,
      bool ascendente});
}

/// @nodoc
class _$PlayerFilterCopyWithImpl<$Res, $Val extends PlayerFilter>
    implements $PlayerFilterCopyWith<$Res> {
  _$PlayerFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userBase = null,
    Object? searchText = null,
    Object? sortBy = null,
    Object? ascendente = null,
  }) {
    return _then(_value.copyWith(
      userBase: null == userBase
          ? _value.userBase
          : userBase // ignore: cast_nullable_to_non_nullable
              as List<BasicUser>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy,
      ascendente: null == ascendente
          ? _value.ascendente
          : ascendente // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlayerFilterCopyWith<$Res>
    implements $PlayerFilterCopyWith<$Res> {
  factory _$$_PlayerFilterCopyWith(
          _$_PlayerFilter value, $Res Function(_$_PlayerFilter) then) =
      __$$_PlayerFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BasicUser> userBase,
      String searchText,
      SortBy sortBy,
      bool ascendente});
}

/// @nodoc
class __$$_PlayerFilterCopyWithImpl<$Res>
    extends _$PlayerFilterCopyWithImpl<$Res, _$_PlayerFilter>
    implements _$$_PlayerFilterCopyWith<$Res> {
  __$$_PlayerFilterCopyWithImpl(
      _$_PlayerFilter _value, $Res Function(_$_PlayerFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userBase = null,
    Object? searchText = null,
    Object? sortBy = null,
    Object? ascendente = null,
  }) {
    return _then(_$_PlayerFilter(
      userBase: null == userBase
          ? _value._userBase
          : userBase // ignore: cast_nullable_to_non_nullable
              as List<BasicUser>,
      searchText: null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
      sortBy: null == sortBy
          ? _value.sortBy
          : sortBy // ignore: cast_nullable_to_non_nullable
              as SortBy,
      ascendente: null == ascendente
          ? _value.ascendente
          : ascendente // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PlayerFilter extends _PlayerFilter {
  const _$_PlayerFilter(
      {required final List<BasicUser> userBase,
      this.searchText = "",
      this.sortBy = SortBy.email,
      this.ascendente = true})
      : _userBase = userBase,
        super._();

  final List<BasicUser> _userBase;
  @override
  List<BasicUser> get userBase {
    if (_userBase is EqualUnmodifiableListView) return _userBase;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userBase);
  }

  @override
  @JsonKey()
  final String searchText;
  @override
  @JsonKey()
  final SortBy sortBy;
  @override
  @JsonKey()
  final bool ascendente;

  @override
  String toString() {
    return 'PlayerFilter(userBase: $userBase, searchText: $searchText, sortBy: $sortBy, ascendente: $ascendente)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerFilter &&
            const DeepCollectionEquality().equals(other._userBase, _userBase) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.sortBy, sortBy) || other.sortBy == sortBy) &&
            (identical(other.ascendente, ascendente) ||
                other.ascendente == ascendente));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_userBase),
      searchText,
      sortBy,
      ascendente);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlayerFilterCopyWith<_$_PlayerFilter> get copyWith =>
      __$$_PlayerFilterCopyWithImpl<_$_PlayerFilter>(this, _$identity);
}

abstract class _PlayerFilter extends PlayerFilter {
  const factory _PlayerFilter(
      {required final List<BasicUser> userBase,
      final String searchText,
      final SortBy sortBy,
      final bool ascendente}) = _$_PlayerFilter;
  const _PlayerFilter._() : super._();

  @override
  List<BasicUser> get userBase;
  @override
  String get searchText;
  @override
  SortBy get sortBy;
  @override
  bool get ascendente;
  @override
  @JsonKey(ignore: true)
  _$$_PlayerFilterCopyWith<_$_PlayerFilter> get copyWith =>
      throw _privateConstructorUsedError;
}
