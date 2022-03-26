import 'package:flutter/cupertino.dart';
import 'package:flutter_auth/Screens/Admin/Home/admin_home_screen.dart';
import 'package:flutter_auth/Screens/User/Home/home_screen.dart';
//import 'package:flutter_auth/services/login_service.dart';
import 'package:get/get.dart';
//import 'package:flutter_auth/models/LoginS_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:flutter_auth/env/env.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  var txtPasswordVisibility = true.obs;

  final TextEditingController usernameEditingController =
      TextEditingController();
  final TextEditingController passwordEditingController =
      TextEditingController();

  @override
  void onInit() {
    super.onInit();
    userLogin();
    // print('show post return value: $posts');
  }

  void userLogin() async {
    final response = await http.post(Uri.parse(Envirotment.endpointLoginUser),
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(
            <String, String>{"username": usernameEditingController.text, "password": passwordEditingController.text}));

    if (response.statusCode == 200) {
      Map<String,dynamic>respData = jsonDecode(response.body);
      print(respData);
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', respData['token']);
      await prefs.setString('login_type', respData['login_type']);
      await prefs.setString('username', respData['username']);
      if(respData["login_type"] == "Admin"){
        await Get.to(() => AdminHomeScreen());
      }else{
        await Get.to(() => HomePage());
      }
    } else {
      //throw Exception('Failed to Login User');
    }
      
    // try {
    //   var response = await LoginService.loginUser(usernameEditingController.text, passwordEditingController.text);
    //   print(response);
    //   final prefs = await SharedPreferences.getInstance();
    //   await prefs.setString('token', response.token);
    //   await prefs.setString('login_type', response.login_type);
    //   await prefs.setString('login_type', response.username);
    //   if (response.login_type == "Admin") {
    //     await Get.to(() => AdminHomeScreen());
    //   } else {
    //     await Get.to(() => HomePage());
    //   }
    // } catch (e) {
    //   print(e);
    // }
  }
}
