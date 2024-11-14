import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_product_state.freezed.dart';

@unfreezed
class UpdateProductState with _$UpdateProductState {
  factory UpdateProductState({
    @Default(null) String? productName,
    @Default(null) String? price,
    @Default(null) String? guarentee,
    @Default(null) String? fiture,
    @Default(null) String? quality,
    @Default(null) String? photo,
    @Default(null) String? errorText,
    @Default(true) bool isValueNoBlank,
  }) = _UpdateProductState;
}
