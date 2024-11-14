import 'package:get/get.dart';
import 'package:spk_dt_client/module/users/edit_user/state/edit_user_state.dart';
import '../../../../core.dart';
import '../view/edit_user_view.dart';

class EditUserController extends GetxController {
  EditUserView? view;
  var state = EditUserState();

  final ListUsersController userController = Get.put(ListUsersController());
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

  editUser(item) async {
    bool isConfirm = await ConfirmDialog.ShowDialog(
      title: "Apakah anda yakin ingin mengubah user ?",
      confirmText: "Ya",
      cancelText: "batal",
    );

    if (isConfirm) {
      try {
        final response = await UserService().editUser(
          id: item.id.toString(),
          name: state.name ?? item.name,
          role: state.role ?? item.role,
          email: state.email ?? item.email,
        );

        // print(response.data);

        if (response.data["user"] != null) {
          await ConfirmDialog.ShowDialog(
            title: "Berhasil Mengubah User",
            confirmText: "Selesai",
            isSuccess: true,
          );
          userController.refreshUser();
          Get.back();
        } else {
          await ConfirmDialog.ShowDialog(
            title: "Email sudah terdaftar",
            confirmText: "Kembali",
            isFailed: true,
          );
        }
      } on Exception catch (err) {
        await ConfirmDialog.ShowDialog(
          title: "gagal menghapus User",
          confirmText: "Selesai",
          isFailed: true,
        );
      }
    }
  }
}
