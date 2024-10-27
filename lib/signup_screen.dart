import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainingprogect/login_ccontroller.dart';
import 'package:trainingprogect/signup_controller.dart.dart';
import 'package:trainingprogect/custom_button.dart';
import 'package:trainingprogect/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  final SignUpController authController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Welcome ",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16),
                  CustomTextField(
                    hintText: "Name",
                    isPassword: true,
                    onChanged: (value) => authController.name.value = value,
                  ),
                  SizedBox(height: 20),

                  CustomTextField(
                    hintText: "Email",
                    onChanged: (value) =>
                        authController.email.value = value,
                  ),
                  SizedBox(height: 16),
                  CustomTextField(
                    hintText: "Password",
                    isPassword: true,
                    onChanged: (value) =>
                        authController.password.value = value,
                  ),
                  SizedBox(height: 20),

                  CustomTextField(
                    hintText: "Confirm Password",
                    isPassword: true,
                    onChanged: (value) =>
                        authController.confirmPassword.value = value,
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    text: "Sign up",
                    onPressed: authController.signUp,
                    color: Colors.yellow.shade700,
                  ),SizedBox(height: 16),
                  // رابط الانتقال إلى شاشة التسجيل
                  TextButton(
                    onPressed: () { Get.offNamed('/login');
                    },
                    child: Text(
                      "you already have an account? log in",
                      style: TextStyle(color: Colors.yellow.shade700),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
