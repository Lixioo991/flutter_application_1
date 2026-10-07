import 'package:get/get.dart';

import '../model/listmakanan_model.dart';

class ListmakananController extends GetxController {
  List<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: 'Nasi Goreng',
      hargaMakanan: '15000',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV0voiGc4bvZOwZYSR-lB5ld3DcgJahBj3zeOqu5C2tw&s=10',
      desc: 'Nasi goreng dengan telur, ayam, dan sayuran.',
      rating: 5,
      review: 'Rasanya enak dan porsinya cukup banyak.',
    ),
    MakananModel(
      namaMakanan: 'Mie Ayam',
      hargaMakanan: '12000',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG5AkNfD5I7H7e9lGjol8K-4BsCNDyET1bo_2DIGSVdA&s=10',
      desc: 'Mie ayam dengan potongan ayam dan sayuran segar.',
      rating: 4,
      review: 'Mie nya enak dan ayamnya juga banyak.',
    ),
  ];
}
