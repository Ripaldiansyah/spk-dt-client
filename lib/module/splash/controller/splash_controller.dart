import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spk_dt_client/core.dart';
import '../view/splash_view.dart';

class SplashController extends GetxController {
  SplashView? view;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
    await redirectToLogin();
  }

  @override
  void onClose() {
    super.onClose();
  }

  redirectToLogin() async {
    // bool isTokenSave = token != null;
    // Widget widget =
    //     isTokenSave ? const MenuNavigationView() : const LoginView();
    await Future.delayed(const Duration(milliseconds: 3500), () {
      Get.offAll(() => const LoginView());
    });
  }
}
