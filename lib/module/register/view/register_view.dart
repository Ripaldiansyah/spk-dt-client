import 'package:flutter/material.dart';
import '../controller/register_controller.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  RegisterView({super.key});
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RegisterController>(
      init: RegisterController(),
      builder: (controller) {
        controller.view = this;

        return SafeArea(
          child: Scaffold(
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Buat Akun",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "Buat akun untuk memulai",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Nama Lengkap",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      QTextField(
                        hintText: "Masukan Nama Lengkap",
                        validator: Validator.required,
                        onChanged: (value) {
                          controller.state.name = value;
                        },
                      ),
                      const Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      QTextField(
                        hintText: "Masukan Alamat Email",
                        validator: Validator.email,
                        onChanged: (value) {
                          controller.state.email = value;
                        },
                      ),
                      const Text(
                        "Password",
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      QTextField(
                        hintText: "Masukan password Anda",
                        validator: Validator.password,
                        onChanged: (value) {
                          controller.state.password = value;
                        },
                        isObscure: true,
                      ),
                      QTextField(
                        hintText: "Konfirmasi password",
                        validator: (value) {
                          String password = controller.state.password ?? "";
                          bool isPasswordMatch = password == value;

                          return Validator.confirmPassword(
                              value, isPasswordMatch);
                        },
                        isObscure: true,
                        onChanged: (value) {},
                      ),
                      Button(
                        onPressed: () {
                          bool isNotValid = !formKey.currentState!.validate();
                          if (isNotValid) {
                            return;
                          }
                          controller.register();
                        },
                        label: "Daftar",
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Login(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
