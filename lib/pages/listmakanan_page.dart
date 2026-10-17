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
      backgroundColor: const Color.fromARGB(255, 181, 231, 225),
      appBar: AppBar(
        title: Text("List Makanan"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.listMakanan.length,
            itemBuilder: (context, index) {
              final makanan = controller.listMakanan[index];
              return Dismissible(
                key: ValueKey(makanan.namaMakanan),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                onDismissed: (direction) {
                  controller.listMakanan.removeAt(index);
                },
                child: InkWell(
                  onTap: () {
                    Get.toNamed(
                      Routes.detailMakanan,
                      arguments: {
                        'namaMakanan': makanan.namaMakanan,
                        'hargaMakanan': makanan.hargaMakanan,
                        'imageUrl': makanan.imageUrl,
                        'desc': makanan.desc,
                        'rating': makanan.rating,
                        'review': makanan.review,
                      },
                    );
                  },
                  child: Card(
                    elevation: 10,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        title: Text(
                          makanan.namaMakanan,
                          style: TextStyle(fontSize: 25),
                        ),
                        subtitle: Text(
                          "Rp. " + makanan.hargaMakanan,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
