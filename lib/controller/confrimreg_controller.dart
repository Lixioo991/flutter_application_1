import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/state_manager.dart';

class ConfrimregController extends GetxController {
  late String nama;
  late String alamat;
  late String email;
  late String noWa;
  late String jenisKelamin;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments;

    nama = arguments['name'];
    alamat = arguments['alamat'];
    email = arguments['email'];
    noWa = arguments['no_wa'];
    jenisKelamin = arguments['jenis_kelamin'];
  }
}
