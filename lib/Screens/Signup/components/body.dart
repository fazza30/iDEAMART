// Import packages
import 'package:flutter/material.dart';
import 'package:flutter_auth/public_components/phone_number_input.dart';
import 'package:flutter_auth/public_components/rounded_password_field.dart';
import 'package:flutter_auth/public_components/username_input.dart';
import 'package:get/get.dart';
import 'package:flutter_auth/public_components/name_input.dart';
import 'package:flutter_auth/Screens/Signup/components/action_button.dart';
import 'package:flutter_auth/Screens/Signup/components/header.dart';
import 'package:flutter_auth/controllers/user_controller.dart';

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // Declaration
  TextEditingController txtName1Controller;
  TextEditingController txtName2Controller;
  TextEditingController txtPhoneController1;
  TextEditingController txtPhoneController2;
  TextEditingController txtPasswordController;
  bool txtPasswordVisibility = true;
  final UserController userController = Get.put(UserController());
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  // Code playground
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: true,
          actions: [],
          centerTitle: true,
          elevation: 0,
        ),
        backgroundColor: Colors.white,
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
                  // Header
                  Header(),

                  // Form goes on
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        // First and Last Name Field
                        Name(txtName1Controller: txtName1Controller, txtName2Controller: txtName2Controller),

                        // Phone Number Field
                        PhoneNumber(txtPhoneController1: txtPhoneController1),

                        // Username Field
                        Username(txtPhoneController2: txtPhoneController2),

                        // Password Field
                        Password(),
                      ],
                    ),
                  ),

                  // Action Button
                  ActionButton()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}