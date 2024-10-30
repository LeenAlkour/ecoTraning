import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainingprogect/controller/home_controller.dart';
import 'package:trainingprogect/screens/home_content.dart';
import 'package:trainingprogect/screens/profile_screen.dart';
import 'package:trainingprogect/screens/settings_screen.dart';
import 'package:trainingprogect/widgets/navigation_bar.dart';


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
