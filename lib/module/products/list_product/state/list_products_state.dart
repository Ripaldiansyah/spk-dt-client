import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spk_dt_client/model/product_model/product_model.dart';
part 'list_products_state.freezed.dart';

@unfreezed
class ListProductsState with _$ListProductsState {
  factory ListProductsState({
    @Default(null) ProductModel? products,
    @Default(1) int page,
    @Default(true) bool isLoading,
    @Default(true) bool isLoadingProducts,
    @Default(false) bool isSelected,
    @Default(false) bool isPaginate,
  }) = _ListProductsState;
}
