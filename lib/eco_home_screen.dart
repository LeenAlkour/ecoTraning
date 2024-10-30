import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainingprogect/home_content.dart';
import 'package:trainingprogect/home_controller.dart';
import 'package:trainingprogect/navigation_bar.dart';
import 'package:trainingprogect/profile_screen.dart';
import 'package:trainingprogect/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController homeController = Get.put(HomeController());

    return Scaffold(

      body: Obx(() {
        return IndexedStack(
          index: homeController.selectedIndex.value,
          children: const [
            HomeContent(),
            ProfileScreen(),
            SettingsScreen(),
          ],
        );
      }),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: homeController.selectedIndex.value,
        onTap: homeController.onItemTapped,
      ),
    );
  }
}
