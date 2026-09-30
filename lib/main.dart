import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "My Learning  App",
      initialRoute: Routes.registration,
      getPages: Routes.myPages,
    );
  }
}
