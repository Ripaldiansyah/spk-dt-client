import 'package:get/get.dart';
import 'package:spk_dt_client/module/predict/state/predict_state.dart';
import '../../../core.dart';
import '../view/predict_view.dart';

class PredictController extends GetxController {
  PredictView? view;
  var state = PredictState();
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

  predict() async {
    try {
      bool isConfirm = await ConfirmDialog.ShowDialog(
        title: "Cari Produk ?",
        confirmText: "Ya",
      );
      LoadingDialog.ShowDialog();
      if (isConfirm) {
        final response = await PredictService().predict(state: state);
        if (response.data["prediction"] == "Ya") {
          bool isShowRecomendation = await ConfirmDialog.ShowDialog(
            title: "Prediksi Ya",
            description:
                "berikut daftar barang yang direkomendasikan untuk dibeli",
            confirmText: "Lihat Barang",
            cancelText: "Cari lagi",
            isSuccess: true,
          );

          if (isShowRecomendation) {
            Get.back();
            Get.to(() =>
                RecomendationView(item: response.data["recommended_products"]));
          } else {
            Get.back();
          }
        } else {
          bool isShowRecomendation = await ConfirmDialog.ShowDialog(
            title: "Prediksi Tidak",
            description:
                "berikut daftar barang yang tidak rekomendasikan untuk dibeli",
            confirmText: "Lihat Barang",
            cancelText: "Cari lagi",
            isFailed: true,
          );

          if (isShowRecomendation) {
            Get.back();
            Get.to(() =>
                RecomendationView(item: response.data["recommended_products"]));
          } else {
            Get.back();
          }
        }
      }
    } catch (e) {
      print(e);
      Get.back();
    }
  }
}
