import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;


  void login() {
    if (validateEmail(email.value) && validatePassword(password.value)) {
      Get.snackbar("Success", "Login successful!",
          snackPosition: SnackPosition.TOP);
      Get.offNamed('/home');
    }
  }


  bool validateEmail(String email) {
    if (email.isNotEmpty && !email.contains(' ') && email.contains('@') &&
        email.endsWith('.com')) {
      return true;
    } else {
      Get.snackbar("Error", "Invalid email", snackPosition: SnackPosition.TOP);
      return false;
    }
  }

  bool validatePassword(String password) {
    if (password.isEmpty) {
      Get.snackbar("Password Error", "Password cannot be empty",
          snackPosition: SnackPosition.TOP);
      return false;
    } else if (password.length < 6) {
      Get.snackbar(
          "Password Error", "Password must be at least 6 characters long",
          snackPosition: SnackPosition.TOP);
      return false;
    }
    return true;
  }
}