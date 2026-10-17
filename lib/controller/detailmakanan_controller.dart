import 'package:get/get.dart';

class DetailmakananController extends GetxController {
  late String namaMakanan;
  late String hargaMakanan;
  late String imageUrl;
  late String desc;
  late int rating;
  late String review;

  @override
  void onInit() {
    super.onInit();

    final arguments = Get.arguments;
    namaMakanan = arguments['namaMakanan'];
    hargaMakanan = arguments['hargaMakanan'];
    imageUrl = arguments['imageUrl'];
    desc = arguments['desc'];
    rating = arguments['rating'];
    review = arguments['review'];
  }
}