import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spk_dt_client/core.dart';

class Register extends StatelessWidget {
  const Register({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "belum punya akun? registrasi ",
          style: TextStyle(
            fontSize: 14.0,
            color: secondaryTextColor,
          ),
        ),
        InkWell(
          onTap: () {
            Get.to(() => RegisterView());
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
