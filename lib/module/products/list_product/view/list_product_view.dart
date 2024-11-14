import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:intl/intl.dart';
import 'package:spk_dt_client/module/login/view/login_view.dart';
import '../controller/list_product_controller.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

class ListProductView extends StatelessWidget {
  const ListProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ListProductController>(
      init: ListProductController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Daftar Produk"),
          ),
          body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    if (!controller.state.isLoadingProducts &&
                        (controller.state.products?.data?.to ?? 0) == 0)
                      const Expanded(
                        child: SizedBox(
                          child: Center(
                            child: Text("Tidak ada data"),
                          ),
                        ),
                      ),
                    if (!controller.state.isLoadingProducts &&
                        (controller.state.products?.data?.to ?? 0) >= 0)
                      Expanded(
                        child: ListView.builder(
                          itemCount: controller.state.products?.data?.to ?? 0,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            var item =
                                controller.state.products?.data?.data?[index];

                            if (item != null) {
                              return InkWell(
                                onTap: () {
                                  Get.to(() => DetailProductView(
                                        item: item,
                                      ));
                                },
                                child: Card(
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.grey[200],
                                      backgroundImage: NetworkImage(
                                        item.photo!,
                                      ),
                                    ),
                                    title: Text(item.productName!),
                                    subtitle: Text(
                                        "Rp.${NumberFormat("#,###", "id_ID").format(item.harga)}"),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    if (controller.state.isLoadingProducts)
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              child: ListTile(
                                leading: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(99.0),
                                    ),
                                  ),
                                ),
                                title: Container(
                                  height: 10,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                  ),
                                ),
                                subtitle: Container(
                                  height: 10,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: const BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ),
                            )
                                .animate(
                                    onPlay: (controller) => controller.repeat())
                                .shimmer(
                                  duration: 700.ms,
                                );
                          },
                        ),
                      ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 20,
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(99.0),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Get.to(() => const CreateProductView());
                    },
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 24.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
