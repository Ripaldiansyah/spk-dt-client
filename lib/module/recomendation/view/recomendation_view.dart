import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../controller/recomendation_controller.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

class RecomendationView extends StatelessWidget {
  const RecomendationView({
    super.key,
    required this.item,
  });
  final item;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RecomendationController>(
      init: RecomendationController(),
      builder: (controller) {
        controller.view = this;
        return Scaffold(
          appBar: AppBar(
            title: const Text("Rekomendasi"),
            actions: [
              IconButton(
                onPressed: () {
                  controller.downloadReport();
                },
                icon: const Icon(Icons.download),
              ),
            ],
          ),
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: item.length,
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    clipBehavior: Clip.none,
                    itemBuilder: (context, index) {
                      var product = item[index];
                      return Card(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 160.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      product["photo"],
                                    ),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(
                                      8.0,
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                product["product_name"],
                                style: const TextStyle(
                                  fontSize: 20.0,
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Rp.${NumberFormat("#,###", "id_ID").format(product["harga"])}",
                                style: const TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              Text(
                                "Garansi \t: ${product["garansi"]}",
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                "Fitur : ${product["fitur"]}",
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Text(
                                "Kualitas : ${product["kualitas"]}",
                                // textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                if (item.length == 0)
                  const Expanded(
                    child: SizedBox(
                      child: Text(
                        "Tidak Ada Produk rekomendasi",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
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
