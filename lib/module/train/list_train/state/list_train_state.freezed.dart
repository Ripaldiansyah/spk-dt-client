// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_train_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListTrainState {
  TrainModel? get trains => throw _privateConstructorUsedError;
  set trains(TrainModel? value) => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  set page(int value) => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  set isLoading(bool value) => throw _privateConstructorUsedError;
  bool get isLoadingTrains => throw _privateConstructorUsedError;
  set isLoadingTrains(bool value) => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  set isSelected(bool value) => throw _privateConstructorUsedError;

  /// Create a copy of ListTrainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListTrainStateCopyWith<ListTrainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTrainStateCopyWith<$Res> {
  factory $ListTrainStateCopyWith(
          ListTrainState value, $Res Function(ListTrainState) then) =
      _$ListTrainStateCopyWithImpl<$Res, ListTrainState>;
  @useResult
  $Res call(
      {TrainModel? trains,
      int page,
      bool isLoading,
      bool isLoadingTrains,
      bool isSelected});

  $TrainModelCopyWith<$Res>? get trains;
}

/// @nodoc
class _$ListTrainStateCopyWithImpl<$Res, $Val extends ListTrainState>
    implements $ListTrainStateCopyWith<$Res> {
  _$ListTrainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListTrainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trains = freezed,
    Object? page = null,
    Object? isLoading = null,
    Object? isLoadingTrains = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      trains: freezed == trains
          ? _value.trains
          : trains // ignore: cast_nullable_to_non_nullable
              as TrainModel?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingTrains: null == isLoadingTrains
          ? _value.isLoadingTrains
          : isLoadingTrains // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ListTrainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TrainModelCopyWith<$Res>? get trains {
    if (_value.trains == null) {
      return null;
    }

    return $TrainModelCopyWith<$Res>(_value.trains!, (value) {
      return _then(_value.copyWith(trains: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListTrainStateImplCopyWith<$Res>
    implements $ListTrainStateCopyWith<$Res> {
  factory _$$ListTrainStateImplCopyWith(_$ListTrainStateImpl value,
          $Res Function(_$ListTrainStateImpl) then) =
      __$$ListTrainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TrainModel? trains,
      int page,
      bool isLoading,
      bool isLoadingTrains,
      bool isSelected});

  @override
  $TrainModelCopyWith<$Res>? get trains;
}

/// @nodoc
class __$$ListTrainStateImplCopyWithImpl<$Res>
    extends _$ListTrainStateCopyWithImpl<$Res, _$ListTrainStateImpl>
    implements _$$ListTrainStateImplCopyWith<$Res> {
  __$$ListTrainStateImplCopyWithImpl(
      _$ListTrainStateImpl _value, $Res Function(_$ListTrainStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListTrainState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trains = freezed,
    Object? page = null,
    Object? isLoading = null,
    Object? isLoadingTrains = null,
    Object? isSelected = null,
  }) {
    return _then(_$ListTrainStateImpl(
      trains: freezed == trains
          ? _value.trains
          : trains // ignore: cast_nullable_to_non_nullable
              as TrainModel?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingTrains: null == isLoadingTrains
          ? _value.isLoadingTrains
          : isLoadingTrains // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ListTrainStateImpl implements _ListTrainState {
  _$ListTrainStateImpl(
      {this.trains = null,
      this.page = 1,
      this.isLoading = true,
      this.isLoadingTrains = true,
      this.isSelected = false});

  @override
  @JsonKey()
  TrainModel? trains;
  @override
  @JsonKey()
  int page;
  @override
  @JsonKey()
  bool isLoading;
  @override
  @JsonKey()
  bool isLoadingTrains;
  @override
  @JsonKey()
  bool isSelected;

  @override
  String toString() {
    return 'ListTrainState(trains: $trains, page: $page, isLoading: $isLoading, isLoadingTrains: $isLoadingTrains, isSelected: $isSelected)';
  }

  /// Create a copy of ListTrainState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListTrainStateImplCopyWith<_$ListTrainStateImpl> get copyWith =>
      __$$ListTrainStateImplCopyWithImpl<_$ListTrainStateImpl>(
          this, _$identity);
}

abstract class _ListTrainState implements ListTrainState {
  factory _ListTrainState(
      {TrainModel? trains,
      int page,
      bool isLoading,
      bool isLoadingTrains,
      bool isSelected}) = _$ListTrainStateImpl;

  @override
  TrainModel? get trains;
  set trains(TrainModel? value);
  @override
  int get page;
  set page(int value);
  @override
  bool get isLoading;
  set isLoading(bool value);
  @override
  bool get isLoadingTrains;
  set isLoadingTrains(bool value);
  @override
  bool get isSelected;
  set isSelected(bool value);

  /// Create a copy of ListTrainState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListTrainStateImplCopyWith<_$ListTrainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
