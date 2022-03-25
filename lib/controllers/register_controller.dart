import 'package:flutter/cupertino.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/WelcomeScreen/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_auth/models/Register_model.dart';
import 'package:flutter_auth/services/register_service.dart';

class RegisterController extends GetxController {
  //final listUser = <ListUser>[].obs;
  //inisialisasi hide password dalam bentuk obs
  var txtPasswordVisibility = true.obs;
  final createUser = CreateUser(status: "", msg: "").obs;
  final TextEditingController firstnameEditingController =
      TextEditingController();
  final TextEditingController lastnameEditingController =
      TextEditingController();
  final TextEditingController usernameEditingController =
      TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();

  //final TextEditingController logintypeController = TextEditingController();

  void registerDataUser() async {
    try {
      var response = await RegisterService.createNewUser(
          firstnameEditingController.text,
          lastnameEditingController.text,
          usernameEditingController.text,
          passwordEditingController.text);
      Get.to(() => WelcomeScreen());
    } catch (e) {
      Get.to(() => LoginScreen());
      print(e);
    }
  }

/*
  void loginDataUser() async{
    try {

      var response = await UserService.createNewUser(
          firstnameEditingController.text,
          lastnameEditingController.text,
          phoneEditingController.text,
          passwordEditingController.text);
      Get.back();
    } catch (e) {
      print(e);
    }
  }*/
/*
  void loginDataUser() async {
    try {
      print('response.msgggwr');
      var response = await UserService.loginUser(
          phoneEditingController.text, passwordEditingController.text);
      print('response. msg');
      Get.back();
    } catch (e) {
      print(e);
    }
  }

  void readUser() async {
    try {
      var response = await UserService.readUser();
      listUser.value = response.listUser;
    } catch (e) {
      print(e);
    }
  }
*/

}
