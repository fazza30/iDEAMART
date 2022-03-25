import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
        body: Body(),
      ),
    );
  }
}