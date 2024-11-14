// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'train_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainModelImpl _$$TrainModelImplFromJson(Map<String, dynamic> json) =>
    _$TrainModelImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TrainModelImplToJson(_$TrainModelImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: (json['id'] as num?)?.toInt(),
      productId: (json['product_id'] as num?)?.toInt(),
      harga: json['harga'],
      garansi: json['garansi'],
      fitur: json['fitur'],
      kualitas: json['kualitas'],
      prediction: json['prediction'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'harga': instance.harga,
      'garansi': instance.garansi,
      'fitur': instance.fitur,
      'kualitas': instance.kualitas,
      'prediction': instance.prediction,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
