import 'package:flutter/material.dart';
import '../controller/settings_controller.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return GetBuilder<SettingsController>(
      init: SettingsController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Settings"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Ubah Nama Lengkap",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    if (controller.isLoading) const CircularProgressIndicator(),
                    if (!controller.isLoading)
                      QTextField(
                        hintText: "Masukan Nama Lengkap",
                        validator: Validator.required,
                        isEnable: controller.isEdit,
                        onChanged: (value) {
                          controller.state.name = value;
                        },
                        value: controller.state.name,
                      ),
                    const Text(
                      "Ubah Email",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    if (controller.isLoading) const CircularProgressIndicator(),
                    if (!controller.isLoading)
                      QTextField(
                        hintText: "Masukan Alamat Email",
                        validator: Validator.email,
                        isEnable: controller.isEdit,
                        value: controller.state.email,
                        onChanged: (value) {
                          controller.state.email = value;
                        },
                      ),
                    const Text(
                      "Ubah Password",
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
                      isEnable: controller.isEdit,
                      validator: Validator.password,
                      onChanged: (value) {
                        controller.state.password = value;
                      },
                      isObscure: true,
                    ),
                    QTextField(
                      hintText: "Konfirmasi password",
                      isEnable: controller.isEdit,
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
                        if (controller.isEdit) {
                          bool isNotValid = !formKey.currentState!.validate();
                          if (isNotValid) {
                            return;
                          }
                        }
                        controller.changeProfile();
                      },
                      label: controller.isEdit ? "Simpan" : "Ubah",
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Button(
                      isOutlineButton: true,
                      onPressed: () {
                        controller.isEdit
                            ? controller.updateButton()
                            : controller.logout();
                      },
                      label: controller.isEdit ? "Batal" : "Logout",
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
