import 'package:get/get.dart';
import 'package:spk_dt_client/core.dart';
import 'package:spk_dt_client/module/register/state/register_state.dart';
import '../view/register_view.dart';

class RegisterController extends GetxController {
  RegisterView? view;
  var state = RegisterState();

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

  register() async {
    try {
      LoadingDialog.ShowDialog();
      var response = await UserService().addUser(
        name: state.name!,
        password: state.password!,
        email: state.email!,
      );

      if (response.data["id"] != null) {
        Get.back();
        Get.offAll(() => LoginView());
        snackbarSuccess(message: "Akun berhasil dibuat");
      } else {
        Get.back();
        snackbarSuccess(message: "Email sudah terdaftar");
      }
    } catch (e) {
      Get.back();
      snackbarSuccess(message: e.toString());
    }
  }
}
