import 'package:get/get.dart';
import 'package:spk_dt_client/module/products/update_product/state/update_product_state.dart';
import '../../../../core.dart';
import '../view/update_product_view.dart';

class UpdateProductController extends GetxController {
  UpdateProductView? view;
  var state = UpdateProductState();
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

  updateProduct(item) async {
    try {
      String productName = state.productName ?? item.productName;
      String guarentee = state.guarentee ?? item.garansi;
      String fiture = state.fiture ?? item.fitur;
      String quality = state.quality ?? item.kualitas;
      String photo = state.photo ?? item.photo;
      int priceTemp = 0;
      if (state.price != null) {
        priceTemp = int.parse(state.price!.replaceAll(".", ""));
      }

      int price = priceTemp == 0 ? item.harga : priceTemp;

      bool isConfirm = await ConfirmDialog.ShowDialog(
        title: "Apakah anda yakin ingin mengubah produk ?",
        confirmText: "Ya",
      );
      LoadingDialog.ShowDialog();

      if (isConfirm) {
        final response = await ProductService().updateProduct(
          productName: productName,
          price: price,
          guarentee: guarentee,
          fiture: fiture,
          quality: quality,
          photo: photo,
          id: item.id,
        );

        if (response.data["data"] != null) {
          await ConfirmDialog.ShowDialog(
            title: "Berhasil Mengubah produk",
            confirmText: "Selesai",
            isSuccess: true,
          );
        } else {
          await ConfirmDialog.ShowDialog(
            title: "Produk sudah ada",
            confirmText: "Kembali",
            isFailed: true,
          );
        }
      }
      productController.refreshProduct();
      Get.back();
      Get.back();
      Get.back();
    } on Exception catch (err) {
      Get.back();
    }
  }
}
