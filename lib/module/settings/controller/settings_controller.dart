import 'package:get/get.dart';
import 'package:spk_dt_client/module/settings/state/settings_state.dart';
import '../../../core.dart';
import '../view/settings_view.dart';

class SettingsController extends GetxController {
  SettingsView? view;
  var state = SettingsState();
  bool isLoading = true;
  bool isEdit = false;
  final ListUsersController userController = Get.put(ListUsersController());
  final DashboardController dashboardController =
      Get.put(DashboardController());
  @override
  void onInit() async {
    await getUserData();
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

  logout() async {
    bool isConfirm = await ConfirmDialog.ShowDialog(
      title: "Apakah anda yakin ingin keluar ?",
      confirmText: "Ya",
      cancelText: "batal",
    );
    if (isConfirm) {
      DBService.clear("XSRF-TOKEN");
      DBService.clear("laravel_session");
      DBService.clear("token");
      Get.offAll(() => const LoginView());
    }
  }

  getUserData() async {
    final userData = await UserService().getUserById(idLogin);
    state.name = userData["user"]["name"];
    state.email = userData["user"]["email"];
    isLoading = false;

    update();
  }

  changeProfile() async {
    if (isEdit == true) {
      String fullname = state.name!;
      String password = state.password!;
      String email = state.email!;

      final userEdit = await UserService().editUser(
        id: idLogin!,
        name: fullname,
        email: email,
        password: password,
      );

      if (userEdit.data["user"] != null) {
        await ConfirmDialog.ShowDialog(
          title: "Berhasil Mengubah User",
          confirmText: "Selesai",
          isSuccess: true,
        );
        userController.refreshUser();
        fullname = userEdit.data["user"]["name"];
        DBService.set("fullname", fullname);
        dashboardController.refresh();
        Get.back();
      } else {
        await ConfirmDialog.ShowDialog(
          title: "Email sudah terdaftar",
          confirmText: "Kembali",
          isFailed: true,
        );
      }
    }
    updateButton();
  }

  updateButton() {
    isEdit = !isEdit;
    update();
  }
}
