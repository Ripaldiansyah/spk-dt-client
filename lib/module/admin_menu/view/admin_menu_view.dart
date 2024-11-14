import 'package:flutter/material.dart';
import '../controller/admin_menu_controller.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

class AdminMenuView extends StatelessWidget {
  const AdminMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    var items = [
      {
        "icon": Icons.group,
        "title": "User",
        "onTap": () {
          Get.to(() => const ListUsersView());
        },
      },
      {
        "icon": Icons.inventory,
        "title": "Produk",
        "onTap": () {
          Get.to(() => const ListProductView());
        },
      },
      {
        "icon": Icons.model_training,
        "title": "Training",
        "onTap": () {
          Get.to(() => const ListTrainView());
        },
      },
    ];
    return GetBuilder<AdminMenuController>(
      init: AdminMenuController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Admin Menu"),
          ),
          body: GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1.0,
              crossAxisCount: 3,
              mainAxisSpacing: 6,
              crossAxisSpacing: 6,
            ),
            itemCount: 3,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              var item = items[index];
              return InkWell(
                onTap: () => (item["onTap"] as Function)(),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.0,
                      color: primaryColor,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12.0),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Icon(
                          item["icon"] as IconData?,
                          size: 100.0,
                          color: primaryColor,
                        ),
                      ),
                      Text(
                        "${item["title"]}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
