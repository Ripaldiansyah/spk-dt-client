import 'package:get/get.dart';
import '../../../../core.dart';
import '../../../../model/product_model/product_model.dart';
import '../view/add_train_view.dart';

class AddTrainController extends GetxController {
  AddTrainView? view;
  var state = AddTrainState();
  final ListTrainController trainController = Get.put(ListTrainController());

  @override
  void onInit() async {
    await getProducts();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  addTrain() async {
    try {
      bool isConfirm = await ConfirmDialog.ShowDialog(
        title: "Apakah anda yakin ingin menambahkan train baru ?",
        confirmText: "Ya",
      );
      LoadingDialog.ShowDialog();
      if (isConfirm) {
        final response = await TrainService().createTrain(state: state);
        if (response.data["data"] != null) {
          trainController.refreshData();
          await ConfirmDialog.ShowDialog(
            title: "Berhasil Menambahkan train baru",
            confirmText: "Selesai",
            isSuccess: true,
          );
          Get.back();
        }
      }
      Get.back();
    } catch (e) {
      print(e);
      Get.back();
    }
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

  List<Map<String, dynamic>> products() {
    List<Map<String, dynamic>> products = [];
    if (!state.isLoadingProducts) {
      final productsList = state.products?.data?.data ?? [];
      productsList.forEach((element) {
        Map<String, dynamic> product = {
          "label": element.productName,
          "value": element.id,
        };

        products.add(product);
      });
    }
    return products;
  }
}
