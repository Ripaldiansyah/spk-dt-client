import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../controller/detail_product_controller.dart';
import 'package:spk_dt_client/core.dart';
import 'package:get/get.dart';

class DetailProductView extends StatelessWidget {
  const DetailProductView({
    super.key,
    required this.item,
  });
  final item;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DetailProductController>(
      init: DetailProductController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Detail Product"),
          ),
          body: Container(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              controller: ScrollController(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 160.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          item.photo,
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
                    item.productName,
                    style: const TextStyle(
                      fontSize: 20.0,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Rp.${NumberFormat("#,###", "id_ID").format(item.harga)}",
                    style: const TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const Divider(),
                  Text(
                    "Garansi \t: ${item.garansi}",
                    style: const TextStyle(
                      fontSize: 18.0,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "Fitur : ${item.fitur}",
                    style: const TextStyle(
                      fontSize: 18.0,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "Kualitas : ${item.kualitas}",
                    style: const TextStyle(
                      fontSize: 18.0,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar: Container(
            height: 100,
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: Column(
              children: [
                Button(
                  label: "Ubah",
                  onPressed: () {
                    controller.updateProduct(item);
                  },
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Button(
                  label: "Hapus",
                  color: Colors.red,
                  onPressed: () {
                    controller.deleteProduct(item.id);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
