import 'package:get/get.dart';
// import 'package:spk_dt_client/model/product_model/product_model_create.dart';

import '../../../../core.dart';

class CreateProductController extends GetxController {
  CreateProductView? view;
  var state = CreateProductState();
  final ListProductController productController =
      Get.put(ListProductController());

  @override
  void onInit() {
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

  errorValidation(value) {
    if (value != null) {
      state =
          state.copyWith(errorText: value.toString(), isValueNoBlank: false);
    } else {
      bool isValueNoBlank = state.price != "" ? true : false;
      state = state.copyWith(errorText: null, isValueNoBlank: isValueNoBlank);
    }
    update();
  }

  create() async {
    try {
      String productName = state.productName!;
      String guarentee = state.guarentee!;
      String fiture = state.fiture!;
      String quality = state.quality!;
      String photo = state.photo!;
      int price = int.parse(state.price!.replaceAll(".", ""));

      bool isConfirm = await ConfirmDialog.ShowDialog(
        title: "Apakah anda yakin ingin menambahkan produk baru ?",
        confirmText: "Ya",
      );
      LoadingDialog.ShowDialog();

      if (isConfirm) {
        final response = await ProductService().createProduct(
          productName: productName,
          price: price,
          guarentee: guarentee,
          fiture: fiture,
          quality: quality,
          photo: photo,
        );
        if (response.data["data"] != null) {
          productController.refreshProduct();
          await ConfirmDialog.ShowDialog(
            title: "Berhasil Menambahkan produk baru",
            confirmText: "Selesai",
            isSuccess: true,
          );
          Get.back();
        } else {
          await ConfirmDialog.ShowDialog(
            title: "Produk sudah ada",
            confirmText: "Kembali",
            isFailed: true,
          );
        }
      }
      Get.back();
    } on Exception catch (err) {
      Get.back();
    }
  }
}
