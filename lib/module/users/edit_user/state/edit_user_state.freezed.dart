// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditUserState {
  String? get name => throw _privateConstructorUsedError;
  set name(String? value) => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  set role(String? value) => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  set email(String? value) => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  set status(String? value) => throw _privateConstructorUsedError;

  /// Create a copy of EditUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditUserStateCopyWith<EditUserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditUserStateCopyWith<$Res> {
  factory $EditUserStateCopyWith(
          EditUserState value, $Res Function(EditUserState) then) =
      _$EditUserStateCopyWithImpl<$Res, EditUserState>;
  @useResult
  $Res call({String? name, String? role, String? email, String? status});
}

/// @nodoc
class _$EditUserStateCopyWithImpl<$Res, $Val extends EditUserState>
    implements $EditUserStateCopyWith<$Res> {
  _$EditUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? role = freezed,
    Object? email = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditUserStateImplCopyWith<$Res>
    implements $EditUserStateCopyWith<$Res> {
  factory _$$EditUserStateImplCopyWith(
          _$EditUserStateImpl value, $Res Function(_$EditUserStateImpl) then) =
      __$$EditUserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? role, String? email, String? status});
}

/// @nodoc
class __$$EditUserStateImplCopyWithImpl<$Res>
    extends _$EditUserStateCopyWithImpl<$Res, _$EditUserStateImpl>
    implements _$$EditUserStateImplCopyWith<$Res> {
  __$$EditUserStateImplCopyWithImpl(
      _$EditUserStateImpl _value, $Res Function(_$EditUserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditUserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? role = freezed,
    Object? email = freezed,
    Object? status = freezed,
  }) {
    return _then(_$EditUserStateImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditUserStateImpl implements _EditUserState {
  _$EditUserStateImpl(
      {this.name = null,
      this.role = null,
      this.email = null,
      this.status = null});

  @override
  @JsonKey()
  String? name;
  @override
  @JsonKey()
  String? role;
  @override
  @JsonKey()
  String? email;
  @override
  @JsonKey()
  String? status;

  @override
  String toString() {
    return 'EditUserState(name: $name, role: $role, email: $email, status: $status)';
  }

  /// Create a copy of EditUserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditUserStateImplCopyWith<_$EditUserStateImpl> get copyWith =>
      __$$EditUserStateImplCopyWithImpl<_$EditUserStateImpl>(this, _$identity);
}

abstract class _EditUserState implements EditUserState {
  factory _EditUserState(
      {String? name,
      String? role,
      String? email,
      String? status}) = _$EditUserStateImpl;

  @override
  String? get name;
  set name(String? value);
  @override
  String? get role;
  set role(String? value);
  @override
  String? get email;
  set email(String? value);
  @override
  String? get status;
  set status(String? value);

  /// Create a copy of EditUserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditUserStateImplCopyWith<_$EditUserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
