import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/custom_txtfield.dart';
import 'package:flutter_application_1/components/custom_button.dart';

class LoginClonePage extends StatelessWidget {
  LoginClonePage({super.key});

  final TextEditingController txtusername = TextEditingController();
  final TextEditingController txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 35),

          const Text(
            'tokopedia',
            style: TextStyle(
              fontSize: 27,
              color: Color.fromARGB(255, 70, 192, 78),
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Masuk',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),

          Container(
            margin: const EdgeInsets.all(25),
            child: CustomTxtfield(
              txtController: txtusername,
              hint: "Input email",
            ),
          ),

          Container(
            margin: const EdgeInsets.all(25),
            child: CustomTxtfield(
              txtController: txtpassword,
              hint: "Input password",
            ),
          ),

          CustomButton(
            buttonText: "Selanjutnya",
            onPressed: () {
              String username = txtusername.text.toString();
              String password = txtpassword.text.toString();

              if (username == "admin" && password == "admin") {
                print("Login sukses");
              } else {
                print("Login gagal");
              }
            },
          ),

          const SizedBox(height: 15),

          SizedBox(
            width: 350,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'G     Google',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),

          const SizedBox(height: 8),

          SizedBox(
            width: 350,
            height: 40,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                'f     Facebook',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
