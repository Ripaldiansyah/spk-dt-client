// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListUserState {
  UserModel? get users => throw _privateConstructorUsedError;
  set users(UserModel? value) => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  set isLoading(bool value) => throw _privateConstructorUsedError;
  bool get isLoadingUsers => throw _privateConstructorUsedError;
  set isLoadingUsers(bool value) => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  set isSelected(bool value) => throw _privateConstructorUsedError;
  bool get isPaginate => throw _privateConstructorUsedError;
  set isPaginate(bool value) => throw _privateConstructorUsedError;

  /// Create a copy of ListUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListUserStateCopyWith<ListUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListUserStateCopyWith<$Res> {
  factory $ListUserStateCopyWith(
          ListUserState value, $Res Function(ListUserState) then) =
      _$ListUserStateCopyWithImpl<$Res, ListUserState>;
  @useResult
  $Res call(
      {UserModel? users,
      int page,
      bool isLoading,
      bool isLoadingUsers,
      bool isSelected,
      bool isPaginate});

  $UserModelCopyWith<$Res>? get users;
}

/// @nodoc
class _$ListUserStateCopyWithImpl<$Res, $Val extends ListUserState>
    implements $ListUserStateCopyWith<$Res> {
  _$ListUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
    Object? page = null,
    Object? isLoading = null,
    Object? isLoadingUsers = null,
    Object? isSelected = null,
    Object? isPaginate = null,
  }) {
    return _then(_value.copyWith(
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingUsers: null == isLoadingUsers
          ? _value.isLoadingUsers
          : isLoadingUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginate: null == isPaginate
          ? _value.isPaginate
          : isPaginate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ListUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res>? get users {
    if (_value.users == null) {
      return null;
    }

    return $UserModelCopyWith<$Res>(_value.users!, (value) {
      return _then(_value.copyWith(users: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListUserStateImplCopyWith<$Res>
    implements $ListUserStateCopyWith<$Res> {
  factory _$$ListUserStateImplCopyWith(
          _$ListUserStateImpl value, $Res Function(_$ListUserStateImpl) then) =
      __$$ListUserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserModel? users,
      int page,
      bool isLoading,
      bool isLoadingUsers,
      bool isSelected,
      bool isPaginate});

  @override
  $UserModelCopyWith<$Res>? get users;
}

/// @nodoc
class __$$ListUserStateImplCopyWithImpl<$Res>
    extends _$ListUserStateCopyWithImpl<$Res, _$ListUserStateImpl>
    implements _$$ListUserStateImplCopyWith<$Res> {
  __$$ListUserStateImplCopyWithImpl(
      _$ListUserStateImpl _value, $Res Function(_$ListUserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = freezed,
    Object? page = null,
    Object? isLoading = null,
    Object? isLoadingUsers = null,
    Object? isSelected = null,
    Object? isPaginate = null,
  }) {
    return _then(_$ListUserStateImpl(
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as UserModel?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingUsers: null == isLoadingUsers
          ? _value.isLoadingUsers
          : isLoadingUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaginate: null == isPaginate
          ? _value.isPaginate
          : isPaginate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ListUserStateImpl implements _ListUserState {
  _$ListUserStateImpl(
      {this.users = null,
      this.page = 1,
      this.isLoading = true,
      this.isLoadingUsers = true,
      this.isSelected = false,
      this.isPaginate = false});

  @override
  @JsonKey()
  UserModel? users;
  @override
  @JsonKey()
  int page;
  @override
  @JsonKey()
  bool isLoading;
  @override
  @JsonKey()
  bool isLoadingUsers;
  @override
  @JsonKey()
  bool isSelected;
  @override
  @JsonKey()
  bool isPaginate;

  @override
  String toString() {
    return 'ListUserState(users: $users, page: $page, isLoading: $isLoading, isLoadingUsers: $isLoadingUsers, isSelected: $isSelected, isPaginate: $isPaginate)';
  }

  /// Create a copy of ListUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListUserStateImplCopyWith<_$ListUserStateImpl> get copyWith =>
      __$$ListUserStateImplCopyWithImpl<_$ListUserStateImpl>(this, _$identity);
}

abstract class _ListUserState implements ListUserState {
  factory _ListUserState(
      {UserModel? users,
      int page,
      bool isLoading,
      bool isLoadingUsers,
      bool isSelected,
      bool isPaginate}) = _$ListUserStateImpl;

  @override
  UserModel? get users;
  set users(UserModel? value);
  @override
  int get page;
  set page(int value);
  @override
  bool get isLoading;
  set isLoading(bool value);
  @override
  bool get isLoadingUsers;
  set isLoadingUsers(bool value);
  @override
  bool get isSelected;
  set isSelected(bool value);
  @override
  bool get isPaginate;
  set isPaginate(bool value);

  /// Create a copy of ListUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListUserStateImplCopyWith<_$ListUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
