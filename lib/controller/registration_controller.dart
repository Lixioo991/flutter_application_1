import 'package:get/get.dart';

class RegistrationController extends GetxController {
  String jenisKelamin = "Laki-laki";

  void pilihJenisKelamin(String value) {
    jenisKelamin = value;
    update();
  }
}
