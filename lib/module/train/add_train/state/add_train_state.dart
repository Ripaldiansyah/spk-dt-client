import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spk_dt_client/model/product_model/product_model.dart';
part 'add_train_state.freezed.dart';

@unfreezed
class AddTrainState with _$AddTrainState {
  factory AddTrainState({
    @Default(null) ProductModel? products,
    @Default(1) int page,
    @Default(true) bool isLoading,
    @Default(true) bool isLoadingProducts,
    @Default(false) bool isSelected,
    @Default(false) bool isPaginate,
    @Default(null) String? decision,
    @Default(null) String? productId,
    @Default(null) String? quality,
    @Default(null) String? fiture,
    @Default(null) String? guarentee,
    @Default(null) String? price,
  }) = _AddTrainState;
}
