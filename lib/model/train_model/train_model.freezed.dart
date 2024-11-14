// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'train_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainModel _$TrainModelFromJson(Map<String, dynamic> json) {
  return _TrainModel.fromJson(json);
}

/// @nodoc
mixin _$TrainModel {
  @JsonKey(name: "data")
  List<Datum>? get data => throw _privateConstructorUsedError;

  /// Serializes this TrainModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TrainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TrainModelCopyWith<TrainModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainModelCopyWith<$Res> {
  factory $TrainModelCopyWith(
          TrainModel value, $Res Function(TrainModel) then) =
      _$TrainModelCopyWithImpl<$Res, TrainModel>;
  @useResult
  $Res call({@JsonKey(name: "data") List<Datum>? data});
}

/// @nodoc
class _$TrainModelCopyWithImpl<$Res, $Val extends TrainModel>
    implements $TrainModelCopyWith<$Res> {
  _$TrainModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TrainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TrainModelImplCopyWith<$Res>
    implements $TrainModelCopyWith<$Res> {
  factory _$$TrainModelImplCopyWith(
          _$TrainModelImpl value, $Res Function(_$TrainModelImpl) then) =
      __$$TrainModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "data") List<Datum>? data});
}

/// @nodoc
class __$$TrainModelImplCopyWithImpl<$Res>
    extends _$TrainModelCopyWithImpl<$Res, _$TrainModelImpl>
    implements _$$TrainModelImplCopyWith<$Res> {
  __$$TrainModelImplCopyWithImpl(
      _$TrainModelImpl _value, $Res Function(_$TrainModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TrainModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$TrainModelImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Datum>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainModelImpl implements _TrainModel {
  const _$TrainModelImpl({@JsonKey(name: "data") final List<Datum>? data})
      : _data = data;

  factory _$TrainModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainModelImplFromJson(json);

  final List<Datum>? _data;
  @override
  @JsonKey(name: "data")
  List<Datum>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TrainModel(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainModelImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of TrainModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainModelImplCopyWith<_$TrainModelImpl> get copyWith =>
      __$$TrainModelImplCopyWithImpl<_$TrainModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainModelImplToJson(
      this,
    );
  }
}

abstract class _TrainModel implements TrainModel {
  const factory _TrainModel({@JsonKey(name: "data") final List<Datum>? data}) =
      _$TrainModelImpl;

  factory _TrainModel.fromJson(Map<String, dynamic> json) =
      _$TrainModelImpl.fromJson;

  @override
  @JsonKey(name: "data")
  List<Datum>? get data;

  /// Create a copy of TrainModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TrainModelImplCopyWith<_$TrainModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Datum _$DatumFromJson(Map<String, dynamic> json) {
  return _Datum.fromJson(json);
}

/// @nodoc
mixin _$Datum {
  @JsonKey(name: "id")
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "product_id")
  int? get productId => throw _privateConstructorUsedError;
  @JsonKey(name: "harga")
  dynamic get harga => throw _privateConstructorUsedError;
  @JsonKey(name: "garansi")
  dynamic get garansi => throw _privateConstructorUsedError;
  @JsonKey(name: "fitur")
  dynamic get fitur => throw _privateConstructorUsedError;
  @JsonKey(name: "kualitas")
  dynamic get kualitas => throw _privateConstructorUsedError;
  @JsonKey(name: "prediction")
  dynamic get prediction => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Datum to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatumCopyWith<Datum> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatumCopyWith<$Res> {
  factory $DatumCopyWith(Datum value, $Res Function(Datum) then) =
      _$DatumCopyWithImpl<$Res, Datum>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "product_id") int? productId,
      @JsonKey(name: "harga") dynamic harga,
      @JsonKey(name: "garansi") dynamic garansi,
      @JsonKey(name: "fitur") dynamic fitur,
      @JsonKey(name: "kualitas") dynamic kualitas,
      @JsonKey(name: "prediction") dynamic prediction,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class _$DatumCopyWithImpl<$Res, $Val extends Datum>
    implements $DatumCopyWith<$Res> {
  _$DatumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? harga = freezed,
    Object? garansi = freezed,
    Object? fitur = freezed,
    Object? kualitas = freezed,
    Object? prediction = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      harga: freezed == harga
          ? _value.harga
          : harga // ignore: cast_nullable_to_non_nullable
              as dynamic,
      garansi: freezed == garansi
          ? _value.garansi
          : garansi // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fitur: freezed == fitur
          ? _value.fitur
          : fitur // ignore: cast_nullable_to_non_nullable
              as dynamic,
      kualitas: freezed == kualitas
          ? _value.kualitas
          : kualitas // ignore: cast_nullable_to_non_nullable
              as dynamic,
      prediction: freezed == prediction
          ? _value.prediction
          : prediction // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatumImplCopyWith<$Res> implements $DatumCopyWith<$Res> {
  factory _$$DatumImplCopyWith(
          _$DatumImpl value, $Res Function(_$DatumImpl) then) =
      __$$DatumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") int? id,
      @JsonKey(name: "product_id") int? productId,
      @JsonKey(name: "harga") dynamic harga,
      @JsonKey(name: "garansi") dynamic garansi,
      @JsonKey(name: "fitur") dynamic fitur,
      @JsonKey(name: "kualitas") dynamic kualitas,
      @JsonKey(name: "prediction") dynamic prediction,
      @JsonKey(name: "created_at") DateTime? createdAt,
      @JsonKey(name: "updated_at") DateTime? updatedAt});
}

/// @nodoc
class __$$DatumImplCopyWithImpl<$Res>
    extends _$DatumCopyWithImpl<$Res, _$DatumImpl>
    implements _$$DatumImplCopyWith<$Res> {
  __$$DatumImplCopyWithImpl(
      _$DatumImpl _value, $Res Function(_$DatumImpl) _then)
      : super(_value, _then);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productId = freezed,
    Object? harga = freezed,
    Object? garansi = freezed,
    Object? fitur = freezed,
    Object? kualitas = freezed,
    Object? prediction = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$DatumImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      harga: freezed == harga ? _value.harga! : harga,
      garansi: freezed == garansi ? _value.garansi! : garansi,
      fitur: freezed == fitur ? _value.fitur! : fitur,
      kualitas: freezed == kualitas ? _value.kualitas! : kualitas,
      prediction: freezed == prediction ? _value.prediction! : prediction,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatumImpl implements _Datum {
  const _$DatumImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "product_id") this.productId,
      @JsonKey(name: "harga") this.harga,
      @JsonKey(name: "garansi") this.garansi,
      @JsonKey(name: "fitur") this.fitur,
      @JsonKey(name: "kualitas") this.kualitas,
      @JsonKey(name: "prediction") this.prediction,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "updated_at") this.updatedAt});

  factory _$DatumImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatumImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int? id;
  @override
  @JsonKey(name: "product_id")
  final int? productId;
  @override
  @JsonKey(name: "harga")
  final dynamic harga;
  @override
  @JsonKey(name: "garansi")
  final dynamic garansi;
  @override
  @JsonKey(name: "fitur")
  final dynamic fitur;
  @override
  @JsonKey(name: "kualitas")
  final dynamic kualitas;
  @override
  @JsonKey(name: "prediction")
  final dynamic prediction;
  @override
  @JsonKey(name: "created_at")
  final DateTime? createdAt;
  @override
  @JsonKey(name: "updated_at")
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Datum(id: $id, productId: $productId, harga: $harga, garansi: $garansi, fitur: $fitur, kualitas: $kualitas, prediction: $prediction, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatumImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            const DeepCollectionEquality().equals(other.harga, harga) &&
            const DeepCollectionEquality().equals(other.garansi, garansi) &&
            const DeepCollectionEquality().equals(other.fitur, fitur) &&
            const DeepCollectionEquality().equals(other.kualitas, kualitas) &&
            const DeepCollectionEquality()
                .equals(other.prediction, prediction) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      productId,
      const DeepCollectionEquality().hash(harga),
      const DeepCollectionEquality().hash(garansi),
      const DeepCollectionEquality().hash(fitur),
      const DeepCollectionEquality().hash(kualitas),
      const DeepCollectionEquality().hash(prediction),
      createdAt,
      updatedAt);

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      __$$DatumImplCopyWithImpl<_$DatumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatumImplToJson(
      this,
    );
  }
}

abstract class _Datum implements Datum {
  const factory _Datum(
      {@JsonKey(name: "id") final int? id,
      @JsonKey(name: "product_id") final int? productId,
      @JsonKey(name: "harga") final dynamic harga,
      @JsonKey(name: "garansi") final dynamic garansi,
      @JsonKey(name: "fitur") final dynamic fitur,
      @JsonKey(name: "kualitas") final dynamic kualitas,
      @JsonKey(name: "prediction") final dynamic prediction,
      @JsonKey(name: "created_at") final DateTime? createdAt,
      @JsonKey(name: "updated_at") final DateTime? updatedAt}) = _$DatumImpl;

  factory _Datum.fromJson(Map<String, dynamic> json) = _$DatumImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int? get id;
  @override
  @JsonKey(name: "product_id")
  int? get productId;
  @override
  @JsonKey(name: "harga")
  dynamic get harga;
  @override
  @JsonKey(name: "garansi")
  dynamic get garansi;
  @override
  @JsonKey(name: "fitur")
  dynamic get fitur;
  @override
  @JsonKey(name: "kualitas")
  dynamic get kualitas;
  @override
  @JsonKey(name: "prediction")
  dynamic get prediction;
  @override
  @JsonKey(name: "created_at")
  DateTime? get createdAt;
  @override
  @JsonKey(name: "updated_at")
  DateTime? get updatedAt;

  /// Create a copy of Datum
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatumImplCopyWith<_$DatumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
