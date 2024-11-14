import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../core.dart';

showCustomSnackbar({
  required String message,
  String? body,
  int duration = 4,
  Color? color,
  Color? messageColor,
  Color? iconColor,
  required IconData icon,
}) {
  var maxWidth = MediaQuery.of(Get.context!).size.width;
  var yourMaxWidth = 400;
  double marginHorizontal = 20;

  if (maxWidth > 760) {
    marginHorizontal = (maxWidth - yourMaxWidth) / 2;
  }

  final snackBar = SnackBar(
    behavior: SnackBarBehavior.floating,
    duration: Duration(seconds: duration),
    padding: const EdgeInsets.all(0.0),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    margin: EdgeInsets.only(
      bottom: 20,
      left: marginHorizontal,
      right: marginHorizontal,
    ),
    content: QAlert(
      color: color,
      message: message,
      duration: duration,
      messageColor: messageColor,
      iconColor: iconColor,
    ),
  );
  ScaffoldMessenger.of(Get.context!).hideCurrentSnackBar();
  ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
}

class QAlert extends StatelessWidget {
  const QAlert({
    super.key,
    this.color,
    this.messageColor,
    this.iconColor,
    required this.message,
    this.duration = 4,
  });
  final Color? color;
  final Color? messageColor;
  final Color? iconColor;

  final String message;
  final int duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
        vertical: 7.0,
      ),
      decoration: BoxDecoration(
        color: color ?? primaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            message,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: TextStyle(
              color: messageColor,
              fontSize: 12.0,
            ),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
            child: Container(
              height: 15,
              width: 15,
              child: Icon(
                Icons.close,
                size: 10.0,
                color: iconColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

snackbarSuccess({required String message, int duration = 4}) {
  showCustomSnackbar(
    message: message,
    duration: duration,
    color: Colors.green[200],
    messageColor: primaryTextColor,
    icon: Icons.check_circle_outline,
    iconColor: Colors.green,
  );
}

snackbarFailed({required String message, int duration = 4}) {
  showCustomSnackbar(
    message: message,
    duration: duration,
    color: Colors.red[200],
    messageColor: primaryTextColor,
    icon: Icons.check_circle_outline,
    iconColor: Colors.green,
  );
}

snackbarWarning({required String message, int duration = 4}) {
  showCustomSnackbar(
    message: message,
    duration: duration,
    color: Colors.yellow[200],
    messageColor: primaryTextColor,
    iconColor: primaryColor,
    icon: Icons.warning_amber_outlined,
  );
}
