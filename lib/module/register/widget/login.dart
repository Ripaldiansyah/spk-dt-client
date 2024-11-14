import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spk_dt_client/core.dart';

class Login extends StatelessWidget {
  const Login({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Sudah punya akun? login ",
          style: TextStyle(
            fontSize: 14.0,
            color: secondaryTextColor,
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(() => const LoginView());
          },
          child: Text(
            "di sini",
            style: TextStyle(
              fontSize: 14.0,
              color: primaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
