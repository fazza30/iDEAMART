import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/components/background.dart';
import 'package:flutter_auth/components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_auth/components/rounded_input_field.dart';
import 'package:flutter_auth/components/name_field.dart';
import 'package:flutter_auth/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "REGISTER",
              style: TextStyle(fontFamily: 'SourceSansPro' ,fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: size.height * 0.03),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FirstNameField(
                  hintText: "John",
                  onChanged: (value) {},
                ),
                SizedBox(width: size.width * 0.03),
                LastNameField(
                  hintText: "Doe",
                  onChanged: (value) {},
                ),
              ],  
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "No. Telepon", 
                  style: TextStyle(
                    fontFamily: "SourceSansPro"
                  )
                ),
                RoundedInputField(
                  hintText: "Masukkan Nomor Telepon Anda",
                  onChanged: (value) {},
                ),
              ],  
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Password",
                  style: TextStyle(
                    fontFamily: "SourceSansPro"
                  )
                ),
                RoundedPasswordField(
                  onChanged: (value) {},
                ),
              ],
            ),
            
            SizedBox(height: size.height * 0.3),
            
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            
            RoundedButton(
              text: "SIGNUP",
              press: () {},
            ),
            
          ],
        ),
      ),
    );
  }
}
