import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spk_dt_client/core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DBService.init();
  await NotificationService.init();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customeTheme(),
      home: const SplashView(),
    ),
  );
}
