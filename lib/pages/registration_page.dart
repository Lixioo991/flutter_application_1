import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_txtfield.dart';
import 'package:flutter_application_1/components/custom_txtfield_nom.dart';
import 'package:flutter_application_1/controller/registration_controller.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  TextEditingController txtnama = TextEditingController();
  TextEditingController txtalamat = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtwa = TextEditingController();

  final controller = Get.put(RegistrationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration Page")),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(25),
            child: CustomTxtfield(txtController: txtnama, hint: "input name"),
          ),

          Container(
            margin: const EdgeInsets.all(25),
            child: CustomTxtfield(
              txtController: txtalamat,
              hint: "input alamat",
            ),
          ),

          Container(
            margin: const EdgeInsets.all(25),
            child: CustomTxtfield(txtController: txtemail, hint: "input email"),
          ),

          Container(
            margin: const EdgeInsets.all(25),
            child: CustomTxtfieldNom(txtController: txtwa, hint: "input no wa"),
          ),

          Container(
            margin: const EdgeInsets.all(25),
            child: GetBuilder<RegistrationController>(
              builder: (controller) {
                return DropdownButton<String>(
                  value: controller.jenisKelamin,
                  isExpanded: true,
                  items: [
                    DropdownMenuItem(
                      value: "Laki-laki",
                      child: Text("Laki-laki"),
                    ),
                    DropdownMenuItem(
                      value: "Perempuan",
                      child: Text("Perempuan"),
                    ),
                  ],
                  onChanged: (value) {
                    controller.pilihJenisKelamin(value!);
                  },
                );
              },
            ),
          ),

          ElevatedButton(
            onPressed: () {
              Get.toNamed(
                Routes.confrim_registration,
                arguments: {
                  'name': txtnama.text,
                  'alamat': txtalamat.text,
                  'email': txtemail.text,
                  'no_wa': txtwa.text,
                  'jenis_kelamin': controller.jenisKelamin,
                },
              );
            },
            child: Text("Send"),
          ),
        ],
      ),
    );
  }
}
