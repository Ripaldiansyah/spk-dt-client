import 'package:get/get.dart';
import 'package:spk_dt_client/module/products/update_product/view/update_product_view.dart';
import '../../../../core.dart';
import '../view/detail_product_view.dart';

class DetailProductController extends GetxController {
  DetailProductView? view;
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

  updateProduct(item) {
    Get.to(() => UpdateProductView(item: item));
  }

  deleteProduct(id) async {
    bool isConfirm = await ConfirmDialog.ShowDialog(
      title: "Apakah anda yakin ingin menghapus produk ?",
      confirmText: "Ya",
      cancelText: "batal",
    );

    if (isConfirm) {
      try {
        ProductService().deleteProduct(id: id);
        await ConfirmDialog.ShowDialog(
          title: "Berhasil menghapus produk",
          confirmText: "Selesai",
          isSuccess: true,
        );
        productController.refreshProduct();
        Get.back();
      } on Exception catch (err) {
        await ConfirmDialog.ShowDialog(
          title: "gagal menghapus produk",
          confirmText: "Selesai",
          isFailed: true,
        );
      }
    }
  }
}
