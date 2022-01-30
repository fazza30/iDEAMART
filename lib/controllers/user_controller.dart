import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter_auth/models/user_model.dart';
import 'package:flutter_auth/services/user_service.dart';

class UserController extends GetxController {
  //final listUser = <ListUser>[].obs;
  final createUser = CreateUser(
          //msg: "",
          //responseCreateUser: ResponseCreateUser(
              //firstname: "", lastname: "", phone: "", password: "", id: ""))
      //.obs;
  );
  final loginUser = LoginUser(
          //token: "",
          responseLoginUser: ResponseLoginUser(phone: "", password: "", id: ""))
      .obs;

  final TextEditingController firstnameEditingController =
      TextEditingController();
  final TextEditingController lastnameEditingController =
      TextEditingController();
  final TextEditingController phoneEditingController = TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();

/*
  @override
  void onInit() {
    readUser();
    super.onInit();
  }
*/

  void createDataUser() async {
    try {
      print('response.msg');
      var response = await UserService.createNewUser(
          firstnameEditingController.text,
          lastnameEditingController.text,
          phoneEditingController.text,
          passwordEditingController.text);
      Get.back();
    } catch (e) {
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
