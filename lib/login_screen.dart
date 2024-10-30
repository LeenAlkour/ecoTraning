import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainingprogect/login_ccontroller.dart';
import 'package:trainingprogect/custom_button.dart';
import 'package:trainingprogect/custom_text_field.dart';


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
                  const Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    hintText: "Email",
                    onChanged: (value) => authController.email.value = value,
                  ),
                  const SizedBox(height: 16),
                  CustomTextField(
                    hintText: "Password",
                    isPassword: true,
                    onChanged: (value) => authController.password.value = value,
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: "Log In",
                    onPressed: authController.login,
                    color: Colors.yellow.shade700,
                  ),
                  const SizedBox(height: 16),
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
