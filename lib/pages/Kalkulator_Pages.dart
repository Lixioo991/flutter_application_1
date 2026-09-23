import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/kalkulator_controller.dart';
import 'package:flutter_application_1/components/custom_txtfield_kal.dart';
import 'package:get/get.dart';

class KalkulatorPages extends StatelessWidget {
  KalkulatorPages({super.key});

  final controller = Get.put(KalkulatorController());

  @override
  Widget build(BuildContext context) {
    TextEditingController txtAngka1 = TextEditingController();
    TextEditingController txtAngka2 = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text("Kalkulator")),
      body: Column(
        children: [
          CustomTxtfield(txtController: txtAngka1, hint: "Input angka 1"),

          CustomTxtfield(txtController: txtAngka2, hint: "Input angka 2"),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);

                  controller.tambah(angka1, angka2);
                },
                child: const Text("Tambah"),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);

                  controller.kurang(angka1, angka2);
                },
                child: const Text("Kurang"),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 136, 23, 243),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);

                  controller.kali(angka1, angka2);
                },
                child: const Text("Kali"),
              ),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 136, 23, 243),
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  int angka1 = int.parse(txtAngka1.text);
                  int angka2 = int.parse(txtAngka2.text);

                  controller.bagi(angka1, angka2);
                },
                child: const Text("Bagi"),
              ),
            ],
          ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 196, 2),
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              txtAngka1.clear();
              txtAngka2.clear();
              controller.hasil.value = 0;
            },
            child: const Text("Reset"),
          ),

          Obx(
            () => Text(
              controller.hasil.toString(),
              style: const TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
