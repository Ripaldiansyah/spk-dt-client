import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core.dart';

String? get token => DBService.get("token");
String? get fullname => DBService.get("fullname");
String? get role => DBService.get("role");
String? get idLogin => DBService.get("id");

class LoginController extends GetxController {
  var state = LoginState();

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

  login(formKey) async {
    bool isNotValid = formKey.currentState!.validate() == false;
    if (isNotValid) {
      return;
    }
    loadingLogin();

    try {
      String email = state.email ?? "";
      String password = state.password ?? "";
      final user = await AuthService().login(
        email: email,
        password: password,
      );
      Get.back();

      if (user.data["data"] != null) {
        DBService.set("token", user.data["data"]["token"]);
        DBService.set("fullname", user.data["data"]["fullname"]);
        DBService.set("role", user.data["data"]["role"]);
        DBService.set("id", user.data["data"]["id"].toString());
        return Get.offAll(() => const MenuNavigationView());
      } else {
        Get.snackbar(
          "Invalid Login",
          "Periksa kembali email dan password anda",
          backgroundColor: Colors.red,
          colorText: Colors.white,
        );
      }
    } on Exception catch (err) {
      Get.back();
      snackbarWarning(message: err.toString());
    }
  }

  Future loadingLogin() {
    return LoadingDialog.ShowDialog();
  }
}
