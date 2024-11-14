import 'package:get/get.dart';
import 'package:spk_dt_client/core.dart';

class ListTrainController extends GetxController {
  ListTrainView? view;
  var state = ListTrainState();

  @override
  void onInit() async {
    await getTrains();
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

  deleteTrain(id) async {
    bool isConfirm = await ConfirmDialog.ShowDialog(
      title: "Apakah anda yakin ingin menghapus Train ?",
      confirmText: "Ya",
      cancelText: "batal",
    );

    if (isConfirm) {
      try {
        TrainService().deleteTrains(id: id);
        await ConfirmDialog.ShowDialog(
          title: "Berhasil menghapus Train",
          confirmText: "Selesai",
          isSuccess: true,
        );
        refreshData();
        Get.back();
      } on Exception catch (err) {
        await ConfirmDialog.ShowDialog(
          title: "gagal menghapus Train",
          confirmText: "Selesai",
          isFailed: true,
        );
      }
    }
  }

  refreshData() {
    state = state.copyWith(isLoadingTrains: true, trains: null);
    update();
    getTrains();
  }

  getTrains() async {
    final trains = await TrainService().getTrains();
    state = state.copyWith(trains: trains, isLoadingTrains: false);
    update();
  }
}
