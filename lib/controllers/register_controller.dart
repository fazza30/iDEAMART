import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter_auth/models/user_model.dart';


class RegisterController extends GetxController {
  //final listUser = <ListUser>[].obs;
  final isLoading = false.obs;

  //inisialisasi hide password dalam bentuk obs
  var txtPasswordVisibility = true.obs;

  final createUser = CreateUser(
          msg: "",
          responseCreateUser: ResponseCreateUser(
              id: "", firstname: "", lastname: "", username: "", password: ""))
      .obs;
  final TextEditingController firstnameEditingController =
      TextEditingController();
  final TextEditingController lastnameEditingController =
      TextEditingController();
  final TextEditingController usernameEditingController =
      TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();
  //final TextEditingController logintypeController = TextEditingController();

  // void registerDataUser() async {
  //   try {
  //     var response = await UserService.createNewUser(
  //         firstnameEditingController.text,
  //         lastnameEditingController.text,
  //         usernameEditingController.text,
  //         passwordEditingController.text);
  //     Get.back();
  //   } catch (e) {
  //     print(e);
  //   }
  // }

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
