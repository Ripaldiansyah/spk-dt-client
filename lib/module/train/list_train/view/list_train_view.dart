import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../controller/list_train_controller.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

class ListTrainView extends StatelessWidget {
  const ListTrainView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ListTrainController>(
      init: ListTrainController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Daftar Train"),
          ),
          body: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    if ((controller.state.trains?.data?.length ?? 0) == 0 &&
                        !controller.state.isLoadingTrains)
                      Expanded(
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          child: const Center(
                            child: Text("Tidak ada data"),
                          ),
                        ),
                      ),
                    if (!controller.state.isLoadingTrains &&
                        (controller.state.trains?.data?.length ?? 0) >= 0)
                      Expanded(
                        child: ListView.builder(
                          itemCount: controller.state.trains?.data?.length ?? 0,
                          shrinkWrap: true,
                          physics: const ScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            var item = controller.state.trains?.data?[index];

                            if (item != null) {
                              return Card(
                                child: ListTile(
                                  leading: Text(
                                    (index + 1).toString(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  title: Text(
                                    item.prediction!,
                                  ),
                                  subtitle: Text(item.harga!),
                                  trailing: Container(
                                    height: 100,
                                    width: 100,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        IconButton(
                                          onPressed: () {
                                            Get.to(() => EditTrainView(
                                                  item: item,
                                                ));
                                          },
                                          icon: Icon(
                                            Icons.edit,
                                            color: primaryColor,
                                            size: 24.0,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 3.0,
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            controller.deleteTrain(item.id!);
                                          },
                                          icon: const Icon(
                                            Icons.delete,
                                            size: 24.0,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ),
                    if (controller.state.isLoadingTrains)
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
                      Get.to(() => const AddTrainView());
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
