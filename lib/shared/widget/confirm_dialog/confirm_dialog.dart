import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core.dart';

class ConfirmDialog extends StatelessWidget {
  const ConfirmDialog({
    Key? key,
    this.title,
    this.confirmText,
    this.cancelText,
    this.description,
    this.imagePath,
    this.isSuccess,
    this.isFailed,
  }) : super(key: key);

  final String? title;

  final String? confirmText;
  final String? cancelText;
  final String? description;
  final String? imagePath;
  final bool? isSuccess;
  final bool? isFailed;

  static Future<dynamic> ShowDialog({
    required String title,
    required String confirmText,
    String? cancelText,
    String? description,
    String? imagePath,
    bool? isSuccess,
    bool? isFailed,
  }) {
    return showDialog(
        context: Get.context!,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return ConfirmDialog(
            title: title,
            confirmText: confirmText,
            cancelText: cancelText,
            description: description,
            imagePath: imagePath,
            isSuccess: isSuccess,
            isFailed: isFailed,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(6),
      ),
      content: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 10.0),
              if (imagePath != null)
                SizedBox(
                  height: 50,
                  child: Image.asset(
                    imagePath!,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              if (imagePath == null && (isSuccess ?? false))
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xff52bd94),
                    borderRadius: BorderRadius.all(
                      Radius.circular(99.0),
                    ),
                  ),
                  child: Icon(
                    Icons.check,
                    size: 24.0,
                    color: Colors.white,
                  ),
                ),
              if (imagePath == null && (isFailed ?? false))
                Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    color: Color(0xffff5630),
                    borderRadius: BorderRadius.all(
                      Radius.circular(99.0),
                    ),
                  ),
                  child: const Icon(
                    Icons.close,
                    size: 24.0,
                    color: Colors.white,
                  ),
                ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                title!,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (description != null)
                Text(
                  description!,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
            ],
          ),
        ),
      ),
      actions: <Widget>[
        Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pop(true);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  confirmText!,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
              ),
            ),
            if (cancelText != null)
              InkWell(
                onTap: () {
                  Navigator.of(context).pop(false);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cancelText!,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ],
      actionsAlignment: MainAxisAlignment.center,
    );
  }
}
