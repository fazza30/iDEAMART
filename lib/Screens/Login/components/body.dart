import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/login_controller.dart';
import '../../../public_components/already_have_an_account_acheck.dart';
import '../../../public_components/input_field.dart';
import '../../../public_components/rounded_button.dart';
import '../../ForgotPassword/forgot_password.dart';
import '../../Signup/signup_screen.dart';

class Body extends StatelessWidget {
  final userController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'MASUK',
                style: Theme.of(context).textTheme.headline1.copyWith(
                    fontFamily: 'Poppins',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),

              // Username Field
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                child: Username()
              ),
              // End of Username Field

              // Password Field
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                child: Password()
              ),

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: InkWell(
                  onTap: () {
                    Get.to(() => ForgotPassword());
                  },
                  child: Text(
                    "Lupa password ?",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w200
                    ),
                  ),
                ),
              ),
              // End of Password Field

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 200, 30, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AlreadyHaveAnAccountCheck(
                      login: true,
                      press: () {
                        Get.to(() => SignUpScreen());
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}