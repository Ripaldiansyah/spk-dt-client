import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'train_model.freezed.dart';
part 'train_model.g.dart';

@freezed
class TrainModel with _$TrainModel {
  const factory TrainModel({
    @JsonKey(name: "data") List<Datum>? data,
  }) = _TrainModel;

  factory TrainModel.fromJson(Map<String, dynamic> json) =>
      _$TrainModelFromJson(json);
}

@freezed
class Datum with _$Datum {
  const factory Datum({
    @JsonKey(name: "id") int? id,
    @JsonKey(name: "product_id") int? productId,
    @JsonKey(name: "harga") harga,
    @JsonKey(name: "garansi") garansi,
    @JsonKey(name: "fitur") fitur,
    @JsonKey(name: "kualitas") kualitas,
    @JsonKey(name: "prediction") prediction,
    @JsonKey(name: "created_at") DateTime? createdAt,
    @JsonKey(name: "updated_at") DateTime? updatedAt,
  }) = _Datum;

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
