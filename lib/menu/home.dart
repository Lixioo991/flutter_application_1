import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListMakananHome());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 181, 231, 225),
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(
          () => SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.listMakanan.length,
              itemBuilder: (context, index) {
                final makanan = controller.listMakanan[index];
                return SizedBox(
                  width: 250,
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
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
