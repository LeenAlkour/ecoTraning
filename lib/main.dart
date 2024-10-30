import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:trainingprogect/onboarding_screen.dart';
import 'package:trainingprogect/signup_controller.dart.dart';
import 'package:trainingprogect/eco_home_screen.dart';
import 'package:trainingprogect/login_screen.dart';
import 'package:trainingprogect/splash_screen.dart';
import 'package:trainingprogect/signup_screen.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     
      getPages: [
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/onboarding', page: () => const OnboardingScreen()),
        GetPage(name: '/signup', page: () => SignUpScreen()),
        GetPage(name: '/home', page: () => const HomeScreen()),
      ],
      home: SplashScreen(),
    );
  }
}
