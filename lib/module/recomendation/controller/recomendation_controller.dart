import 'dart:io';

import 'package:get/get.dart';
import 'package:path_provider/path_provider.dart';
import 'package:spk_dt_client/core.dart';
import '../view/recomendation_view.dart';

class RecomendationController extends GetxController {
  RecomendationView? view;

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

  downloadReport() async {
    final response = await PredictService().downloadReport();
  }
}
