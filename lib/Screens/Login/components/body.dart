import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/action_button.dart';
import 'package:flutter_auth/public_components/rounded_input_field.dart';
import 'package:flutter_auth/public_components/rounded_password_field.dart';

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'MASUK',
                style: Theme.of(context).textTheme.headline1.copyWith(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),
              RoundedInputField(),
              RoundedPasswordField(),
              ActionButton(),
            ],
          ),
        ),
      ),
    );
  }
}