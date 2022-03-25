import 'package:flutter/material.dart';
//import 'package:flutter_auth/Screens/Admin/Home/admin_home_screen.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
//import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
//import 'package:flutter_auth/Screens/User/Home/home_screen.dart';
import 'package:flutter_auth/controllers/login_controller.dart';
import 'package:flutter_auth/public_components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/public_components/rounded_button.dart';
//import 'package:flutter_auth/utils/utils.dart';
//import 'package:page_transition/page_transition.dart';
import 'package:get/get.dart';

class ActionButton extends StatelessWidget {
  final userController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(30, 200, 30, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AlreadyHaveAnAccountCheck(
            login: true,
            press: () {
              Get.to(() => LoginScreen());
            },
          ),
          RoundedButton(
            text: "MASUK",
            press: () {
              userController.userLogin();
            },
          ),
        ],
      ),
    );
  }
}