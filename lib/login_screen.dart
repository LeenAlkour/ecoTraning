import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainingprogect/login_ccontroller.dart';
import 'package:trainingprogect/signup_controller.dart.dart';
import 'package:trainingprogect/custom_button.dart';
import 'package:trainingprogect/custom_text_field.dart';
import 'package:trainingprogect/signup_screen.dart';


class LoginScreen extends StatelessWidget {
  final LoginController authController = Get.put(LoginController());

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
                  // عنوان مميز
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 16),
                  // حقل البريد الإلكتروني
                  CustomTextField(
                    hintText: "Email",
                    onChanged: (value) => authController.email.value = value,
                  ),
                  SizedBox(height: 16),
                  // حقل كلمة المرور
                  CustomTextField(
                    hintText: "Password",
                    isPassword: true,
                    onChanged: (value) => authController.password.value = value,
                  ),
                  SizedBox(height: 20),
                  // زر تسجيل الدخول
                  CustomButton(
                    text: "Log In",
                    onPressed: authController.login,
                    color: Colors.yellow.shade700,
                  ),
                  SizedBox(height: 16),
                  // رابط الانتقال إلى شاشة التسجيل
                  TextButton(
                    onPressed: () { Get.offNamed('/signup');
                      },
                    child: Text(
                      "Don't have an account? Sign Up",
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
