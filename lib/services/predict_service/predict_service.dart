import 'dart:io';

import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

import '../../core.dart';
import 'package:permission_handler/permission_handler.dart';

class PredictService {
  Future predict({
    required state,
  }) async {
    try {
      var response = await DioService.ds.post(
        "$baseUrl/api/predict/",
        data: {
          "harga": state.price,
          "garansi": state.guarentee,
          "fitur": state.fiture,
          "kualitas": state.quality,
        },
      );

      return response;
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future downloadReport() async {
    try {
      await _requestPermission();

      var response = await DioService.ds.get(
        "$baseUrl/api/predict/report",
        options: Options(responseType: ResponseType.bytes),
      );

      if (response.statusCode == 200) {
        String? directoryPath = await FilePicker.platform.getDirectoryPath();
        if (directoryPath != null) {
          String fileName = "report.pdf";
          String filePath = '$directoryPath/$fileName';
          await File(filePath).writeAsBytes(response.data);
          final result = await OpenFile.open(filePath);
          Get.snackbar("Sukses", "Download report berhasil");
        }
      } else {
        Get.snackbar("Error", "Download report gagal");
      }
    } on Exception catch (err) {
      throw Exception(err);
    }
  }

  Future<void> _requestPermission() async {
    final permision = await Permission.storage.request();
    if (await Permission.storage.request().isGranted) {
      return;
    } else {
      Get.snackbar("Permission Denied",
          "Storage permission is required to download the report.");
    }
  }
}
