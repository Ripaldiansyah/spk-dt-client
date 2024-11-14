import 'package:flutter/material.dart';
import '../controller/create_product_controller.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

class CreateProductView extends StatelessWidget {
  const CreateProductView({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return GetBuilder<CreateProductController>(
      init: CreateProductController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Tambah Produk"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Nama Produk",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    QTextField(
                      validator: Validator.required,
                      onChanged: (value) {
                        controller.state.productName = value;
                      },
                      hintText: "Masukan nama produk",
                    ),
                    const Text(
                      "Harga",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    QTextField(
                      validator: Validator.price,
                      errorText: controller.state.errorText,
                      onChanged: (value) {
                        controller.state.price = value;
                        final isValid = Validator.price(value);
                        controller.errorValidation(isValid);
                      },
                      hintText: "Masukan harga",
                      isNumberOnly: true,
                    ),
                    const Text(
                      "Garansi",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    QDropdownField(
                      validator: Validator.required,
                      items: const [
                        {
                          "label": "Resmi",
                          "value": "Resmi",
                        },
                        {
                          "label": "Distributor",
                          "value": "Distributor",
                        },
                        {
                          "label": "Internasional",
                          "value": "Internasional",
                        }
                      ],
                      value: null,
                      onChanged: (value, label) {
                        controller.state.guarentee = value;
                      },
                    ),
                    const Text(
                      "Fitur",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    QDropdownField(
                      validator: Validator.required,
                      items: const [
                        {
                          "label": "Banyak",
                          "value": "Banyak",
                        },
                        {
                          "label": "Cukup",
                          "value": "Cukup",
                        },
                        {
                          "label": "Minim",
                          "value": "Minim",
                        }
                      ],
                      value: null,
                      onChanged: (value, label) {
                        controller.state.fiture = value;
                      },
                    ),
                    const Text(
                      "Kualitas",
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    QDropdownField(
                      validator: Validator.required,
                      items: const [
                        {
                          "label": "Bagus",
                          "value": "Bagus",
                        },
                        {
                          "label": "Cukup",
                          "value": "Cukup",
                        },
                        {
                          "label": "Kurang",
                          "value": "Kurang",
                        }
                      ],
                      value: null,
                      onChanged: (value, label) {
                        controller.state.quality = value;
                      },
                    ),
                    QImagePicker(
                      label: "Photo",
                      validator: Validator.required,
                      value: null,
                      onChanged: (value) {
                        controller.state.photo = value;
                      },
                    ),
                    Button(
                      isEnabled: controller.state.isValueNoBlank,
                      onPressed: () {
                        bool isNotValid = formKey.currentState!.validate();
                        if (!isNotValid) {
                          return;
                        }
                        controller.create();
                      },
                      label: "Simpan Produk",
                    )
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
