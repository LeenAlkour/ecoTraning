import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';
import 'package:trainingprogect/eco_home_screen.dart';
import 'package:trainingprogect/login_screen.dart';
import 'package:trainingprogect/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context)  {
    if (GetStorage().read('onboardingComplete') == "true") {
      print("onboardingComplete${GetStorage().read('onboardingComplete')}");
      if (GetStorage().read('loggedIn') == "true" ||GetStorage().read('SignUp') == "true" ) {
        print("loggedIn${GetStorage().read('loggedIn')}");
        return HomeScreen();
      } else {
        print("loggedIn${GetStorage().read('loggedIn')}");


        return LoginScreen();

      }
    } else {
      print("onboardingComplete${GetStorage().read('onboardingComplete')}");

      return OnboardingScreen();

    }


  }
}
