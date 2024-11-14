import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../controller/list_users_controller.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

class ListUsersView extends StatelessWidget {
  const ListUsersView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ListUsersController>(
      init: ListUsersController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Daftar Pengguna"),
          ),
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                if (!controller.state.isLoadingUsers &&
                    (controller.state.users?.data?.to ?? 0) == 0)
                  const Expanded(
                    child: SizedBox(
                      child: Center(
                        child: Text("Tidak ada data"),
                      ),
                    ),
                  ),
                if (!controller.state.isLoadingUsers &&
                    (controller.state.users?.data?.to ?? 0) >= 0)
                  Expanded(
                    child: ListView.builder(
                      itemCount: controller.state.users?.data?.to ?? 0,
                      shrinkWrap: true,
                      physics: const ScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        var item = controller.state.users?.data?.data?[index];

                        if (item != null) {
                          return Card(
                            child: ListTile(
                              leading: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(999.0),
                                  ),
                                ),
                                child: Text(
                                  item.name![0],
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              title: Text(item.name!),
                              subtitle: Text(item.role!),
                              trailing: Container(
                                height: 100,
                                width: 100,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Get.to(() => EditUserView(
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
                                        controller.deleteUser(item.id!);
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
                if (controller.state.isLoadingUsers)
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
        );
      },
    );
  }
}
