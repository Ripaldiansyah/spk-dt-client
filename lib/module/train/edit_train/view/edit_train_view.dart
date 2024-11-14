import 'package:flutter/material.dart';
import '../controller/edit_train_controller.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

class EditTrainView extends StatelessWidget {
  const EditTrainView({
    super.key,
    required this.item,
  });

  final item;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();
    return GetBuilder<EditTrainController>(
      init: EditTrainController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Ubah Train"),
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
                      "Harga",
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
                          "label": "1-5 Juta",
                          "value": "1-5 Juta",
                        },
                        {
                          "label": "6-10 Juta",
                          "value": "6-10 Juta",
                        },
                        {
                          "label": "11-15 Juta",
                          "value": "11-15 Juta",
                        }
                      ],
                      value: item.harga,
                      onChanged: (value, label) {
                        controller.state.price = value;
                      },
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
                      value: item.garansi,
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
                      value: item.fitur,
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
                      value: item.kualitas,
                      onChanged: (value, label) {
                        controller.state.quality = value;
                      },
                    ),
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
                    if (!controller.state.isLoadingProducts)
                      QDropdownField(
                        items: controller.products(),
                        value: item.productId,
                        onChanged: (value, label) {
                          controller.state.productId = value.toString();
                        },
                      ),
                    const Text(
                      "Keputusan Produk",
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
                          "label": "Ya",
                          "value": "Ya",
                        },
                        {
                          "label": "Tidak",
                          "value": "Tidak",
                        },
                      ],
                      value: item.prediction,
                      onChanged: (value, label) {
                        controller.state.decision = value;
                      },
                    ),
                    Button(
                      label: "Ubah Train Produk",
                      onPressed: () {
                        bool isNotValid = !formKey.currentState!.validate();
                        if (isNotValid) {
                          return;
                        }

                        controller.editTrain(item);
                      },
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
