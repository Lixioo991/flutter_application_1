import 'package:flutter_application_1/pages/confrimreg_page.dart';
import 'package:flutter_application_1/pages/registration_page.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/regitrasion";
  static const String confrim_registration = "/confrim_registration";

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confrim_registration, page: () => ConfrimregPage()),
  ];
}
