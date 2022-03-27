// ignore_for_file: sdk_version_ui_as_code

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/login_controller.dart';
import '../../public_components/input_field.dart';
import '../../public_components/rounded_button.dart';

class ForgotPassword extends StatelessWidget {
  final userController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Color(0xFFF5F5F5),
        body: SafeArea(
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
                  if(!isKeyboard) Text(
                    'PEMULIHAN AKUN',
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
                  // End of Password Field

                  // Confirm Password Field
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30,10,30,0),
                    child: CPassword(),
                  ),
                  // End of Confirm Password Field

                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 200, 30, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RoundedButton(
                          text: "GANTI PASSWORD",
                          // press: () {
                          //   userController.userLogin();
                          // },
                        ),
                      ],
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