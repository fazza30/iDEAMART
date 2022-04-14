part of 'controller.dart';

class WelcomeController extends GetxController {

  void handleToRegister(){
    Get.to(() => SignUpScreen());
  }

  void handleToLogin(){
    Get.to(() => LoginScreen());
  }
}