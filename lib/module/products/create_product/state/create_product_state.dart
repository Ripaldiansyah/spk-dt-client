import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_product_state.freezed.dart';

@unfreezed
class CreateProductState with _$CreateProductState {
  factory CreateProductState({
    @Default(null) String? productName,
    @Default(null) String? price,
    @Default(null) String? guarentee,
    @Default(null) String? fiture,
    @Default(null) String? quality,
    @Default(null) String? photo,
    @Default(null) String? errorText,
    @Default(false) bool isValueNoBlank,
  }) = _CreateProductState;
}
