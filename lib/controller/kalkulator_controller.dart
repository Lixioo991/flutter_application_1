import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasil = 0.obs;

  void tambah(int angka1, int angka2) {
    int hasiltambah = angka1 + angka2;
    hasil.value = hasiltambah;
    Get.snackbar(
      "Hasil",
      "Hasil penjumlahan adalah $hasiltambah",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kurang(int angka1, int angka2) {
    int hasilkurang = angka1 - angka2;
    hasil.value = hasilkurang;
    Get.snackbar(
      "Hasil",
      "Hasil pengurangan adalah $hasilkurang",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void kali(int angka1, int angka2) {
    int hasilkali = angka1 * angka2;
    hasil.value = hasilkali;
    Get.snackbar(
      "Hasil",
      "Hasil perkalian adalah $hasilkali",
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void bagi(int angka1, int angka2) {
    int hasilbagi = angka1 ~/ angka2;
    hasil.value = hasilbagi;
    Get.snackbar(
      "Hasil",
      "Hasil pembagian adalah $hasilbagi",
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
