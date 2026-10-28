import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/menu_drawer_controller.dart';

class MenuDrawerPage extends StatelessWidget {
  MenuDrawerPage({super.key});

  final MenuDrawerController controller = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(title: const Text('Menu Drawer')),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Text(
                  'Menu',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Home'),
                selected: controller.selectedIndex.value == 0,
                onTap: () {
                  controller.changePage(0);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.history_outlined),
                title: const Text('History'),
                selected: controller.selectedIndex.value == 1,
                onTap: () {
                  controller.changePage(1);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_outline),
                title: const Text('Profile'),
                selected: controller.selectedIndex.value == 2,
                onTap: () {
                  controller.changePage(2);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: IndexedStack(
          index: controller.selectedIndex.value,
          children: controller.listPages,
        ),
      ),
    );
  }
}
