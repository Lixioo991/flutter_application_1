import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/controller/confrimreg_controller.dart';

class ConfrimregPage extends StatelessWidget {
  ConfrimregPage({super.key});

  final controller = Get.put(ConfrimregController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Confirm Registration")),
      body: Column(
        children: [
          Text(
            "Nama ${controller.nama}",
            style: const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 60, 253, 173),
            ),
          ),

          Text(
            "Alamat ${controller.alamat}",
            style: const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 46, 226, 226),
            ),
          ),

          Text(
            "Email ${controller.email}",
            style: const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 33, 243, 233),
            ),
          ),

          Text(
            "No WA ${controller.noWa}",
            style: const TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 20, 217, 252),
            ),
          ),

          Text(
            "Jenis Kelamin ${controller.jenisKelamin}",
            style: const TextStyle(fontSize: 25),
          ),

          ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Oke"),
          ),
        ],
      ),
    );
  }
}
