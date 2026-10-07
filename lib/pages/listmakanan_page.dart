import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/listmakanan_controller.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class ListmakananPage extends StatelessWidget {
  ListmakananPage({super.key});
  final controller = Get.put(ListmakananController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          "List Makanan",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: controller.listMakanan.length,
        itemBuilder: (context, index) {
          final makanan = controller.listMakanan[index];
          return GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              print("DITEKAN: ${makanan.namaMakanan}");
              Get.toNamed(Routes.detailMakanan, arguments: makanan);
            },
            child: Card(
              elevation: 4,
              margin: const EdgeInsets.only(bottom: 16),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      makanan.namaMakanan,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Rp.${makanan.hargaMakanan}",
                      style: const TextStyle(
                        color: Colors.orange,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
