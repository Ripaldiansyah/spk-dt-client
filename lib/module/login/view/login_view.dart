import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:spk_dt_client/module/login/widget/header.dart';
import 'package:spk_dt_client/module/login/widget/register.dart';
import 'package:spk_dt_client/shared/util/validator/validator.dart';
import 'package:spk_dt_client/shared/widget/button/button.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        // controller.view = this;
        return Scaffold(
          body: Form(
            key: formKey,
            child: Column(
              children: [
                const Header(),
                Expanded(
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Welcome!",
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                            QTextField(
                              hintText: "Masukan email",
                              validator: Validator.email,
                              onChanged: (value) {
                                controller.state.email = value;
                              },
                            ),
                            QTextField(
                              hintText: "Masukan Password",
                              isObscure: true,
                              validator: Validator.password,
                              onChanged: (value) {
                                controller.state.password = value;
                              },
                            ),
                            Button(
                              onPressed: () => controller.login(formKey),
                              label: "Masuk",
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Register()
                          ],
                        ),
                      ),
                    ),
                  ).animate(),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
