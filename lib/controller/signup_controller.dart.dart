

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:get_storage/get_storage.dart';

class SignUpController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var confirmPassword = ''.obs;
  var name = ''.obs;


  void signUp() {
    if (validateEmail(email.value) &&
        validatePassword(password.value) &&
        validateConfirmPassword(password.value, confirmPassword.value) &&
        validateName(name.value)) {
      Get.snackbar("Success", "Sign up successful!",
          snackPosition: SnackPosition.TOP);
      Get.offNamed('/home');
      GetStorage().write('SignUp', "true");
    }
  }

  bool validateEmail(String email) {
    if (email.isNotEmpty && !email.contains(' ') &&email.contains('@') && email.endsWith('.com')) {
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

  bool validateConfirmPassword(String password, String confirmPassword) {
    if (confirmPassword.isEmpty) {
      Get.snackbar("Confirm Password Error", "Confirm password cannot be empty",
          snackPosition: SnackPosition.TOP);
      return false;
    } else if (password != confirmPassword) {
      Get.snackbar("Confirm Password Error", "Passwords do not match",
          snackPosition: SnackPosition.TOP);
      return false;
    }
    return true;
  }

  bool validateName(String name) {
    if (name.isEmpty) {
      Get.snackbar("Name Error", "Name cannot be empty",
          snackPosition: SnackPosition.TOP);
      return false;
    }
    return true;
  }
}
