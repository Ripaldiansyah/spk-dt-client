import 'package:get/get.dart';
import 'package:spk_dt_client/model/product_model/product_model.dart';
import '../../../../core.dart';
import '../view/list_product_view.dart';

class ListProductController extends GetxController {
  ListProductView? view;
  var state = ListProductsState();

  @override
  void onInit() async {
    await getProducts();
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  refreshProduct() {
    state = state.copyWith(products: null, isLoadingProducts: true);
    update();
    getProducts();
  }

  Future<void> getProducts() async {
    final newProducts = await ProductService().getProducts(state.page);
    final oldData = state.products?.data;
    final combinedData = [
      ...(state.isSelected ? [] : oldData?.data ?? []),
      ...(newProducts.data?.data ?? []),
    ].cast<Datum>();

    final updatedData = Data(
        currentPage: newProducts.data?.currentPage ?? oldData?.currentPage,
        data: combinedData,
        firstPageUrl: newProducts.data?.firstPageUrl ?? oldData?.firstPageUrl,
        from: newProducts.data?.from ?? oldData?.from,
        lastPage: newProducts.data?.lastPage ?? oldData?.lastPage,
        lastPageUrl: newProducts.data?.lastPageUrl ?? oldData?.lastPageUrl,
        links: newProducts.data?.links ?? oldData?.links,
        nextPageUrl: newProducts.data?.nextPageUrl ?? oldData?.nextPageUrl,
        path: newProducts.data?.path ?? oldData?.path,
        perPage: newProducts.data?.perPage ?? oldData?.perPage,
        prevPageUrl: newProducts.data?.prevPageUrl ?? oldData?.prevPageUrl,
        to: newProducts.data?.to ?? oldData?.to,
        total: (oldData?.total ?? 0));

    final updatedProducts = ProductModel(data: updatedData);

    state = state.copyWith(products: updatedProducts, isLoadingProducts: false);
    update();
  }
}
