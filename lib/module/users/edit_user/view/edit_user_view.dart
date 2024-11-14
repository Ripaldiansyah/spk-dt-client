import 'package:flutter/material.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

class EditUserView extends StatelessWidget {
  const EditUserView({
    super.key,
    required this.item,
  });

  final item;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return GetBuilder<EditUserController>(
      init: EditUserController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Edit User"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(12.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      value: item.name,
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
                        value: item.email),
                    const Text(
                      "Role",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    QDropdownField(
                      validator: Validator.required,
                      items: const [
                        {
                          "label": "Admin",
                          "value": "Admin",
                        },
                        {
                          "label": "User",
                          "value": "User",
                        }
                      ],
                      value: item.role,
                      onChanged: (value, label) {
                        controller.state.role = value;
                      },
                    ),
                    Button(
                      onPressed: () {
                        bool isNotValid = formKey.currentState!.validate();
                        if (!isNotValid) {
                          return;
                        }
                        controller.editUser(item);
                      },
                      label: "Ubah",
                    ),
                    const SizedBox(
                      height: 10.0,
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
