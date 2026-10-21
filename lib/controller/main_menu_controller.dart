import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../menu/history.dart';
import '../menu/home.dart';
import '../menu/profie.dart';

class MainMenuController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
  }

  final List<Widget> listPages = [
    const HomePage(),
    const HistoryPage(),
    const ProfilePage(),
  ];
}
