import 'dart:async';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:spk_dt_client/core.dart';
import '../view/dashboard_view.dart';

class DashboardController extends GetxController {
  DashboardView? view;
  var currentTime = DateFormat('HH:mm:ss').format(DateTime.now()).obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      currentTime.value = DateFormat('HH:mm:ss').format(DateTime.now());
    });

    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void refresh() {
    print(fullname);
    super.refresh();
  }
}
