import 'package:get/get.dart';

import '../model/listmakanan_model.dart';

class ListMakananHome extends GetxController {
   RxList<MakananModel> listMakanan = [
    MakananModel(
      namaMakanan: "Nasi goreng",
      hargaMakanan: "15000",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV0voiGc4bvZOwZYSR-lB5ld3DcgJahBj3zeOqu5C2tw&s=10",
      desc: "Nasi goreng dengan telur dan ayam",
      rating: 5,
      review: "Joss",
    ),
    MakananModel(
      namaMakanan: "Mie ayam",
      hargaMakanan: "12000",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQG5AkNfD5I7H7e9lGjol8K-4BsCNDyET1bo_2DIGSVdA&s=10",
      desc: "Mie ayam dengan potongan ayam segar",
      rating: 4,
      review: "Enak poll.",
    ),
    MakananModel(
      namaMakanan: "Bakso",
      hargaMakanan: "12000",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVqIds6VCgc-llVIz59Vlp0N_SiHRW44an0X0YB1GoyQ&s=10",
      desc: "Bakso sapi",
      rating: 5,
      review: "Baksonya enak.",
    ),
    MakananModel(
      namaMakanan: "Pecel",
      hargaMakanan: "8000",
      imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVK3cdUzaUd7_RCICz9glcH_dc3aAWFms9kteymZiAoQ&s=10",
      desc: "Sayuran rebus dengan bumbu kacang khas pecel",
      rating: 5,
      review: "gurih lek",
    ),
  ].obs;
}
