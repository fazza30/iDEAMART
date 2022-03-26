// Import packages
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_auth/Screens/Signup/components/action_button.dart';
import 'package:flutter_auth/Screens/Signup/components/header.dart';
import 'package:flutter_auth/controllers/user_controller.dart';

import '../../../public_components/input_field.dart';

class Body extends StatelessWidget {
  TextEditingController txtName1Controller;
  TextEditingController txtName2Controller;
  TextEditingController txtPhoneController1;
  TextEditingController txtPhoneController2;
  TextEditingController txtPasswordController;
  bool txtPasswordVisibility = true;
  final UserController userController = Get.put(UserController());
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  
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
                    padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        // First and Last Name Field
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                  child: FirstName(firstNameTextFieldController: txtName1Controller,),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                  child: LastName(lastNameTextFieldController: txtName2Controller,),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                          child: Phone(phoneTextFieldController: txtPhoneController1,),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                          child: Username(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                          child: Password(),
                        ),
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