import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/WelcomeScreen/components/action_button.dart';
import 'package:flutter_auth/Screens/WelcomeScreen/components/app_logo.dart';
import 'package:flutter_auth/Screens/WelcomeScreen/components/header.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

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
            children: [
              AppLogo(),
              Header(),
              ActionButton()
            ],
          ),
        ),
      ),
    );
  }
}