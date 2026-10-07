import 'package:flutter_application_1/pages/confrimreg_page.dart';

import 'package:flutter_application_1/pages/registration_page.dart';

import 'package:flutter_application_1/pages/listmakanan_page.dart';

import 'package:flutter_application_1/pages/detailmakanan_page.dart';

import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confrimRegistration = "/confrim_registration";
  static const String listMakanan = "/list_makanan";
  static const String detailMakanan = "/detail_makanan";

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confrimRegistration, page: () => ConfrimregPage()),
    GetPage(name: listMakanan, page: () => ListmakananPage()),
    GetPage(name: detailMakanan, page: () => DetailmakananPage()),
  ];
}
