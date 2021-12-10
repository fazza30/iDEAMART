import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/body.dart';
// import 'package:flutter_auth/Screens/User/Testing/testing_page.dart';
// import 'package:flutter_auth/Screens/User/Home/homescreen.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }

}

// class LoginUser extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// enum LoginStatus { notSignIn, signIn }

// class _LoginState extends State<LoginUser> {
  
//   LoginStatus _loginStatus = LoginStatus.notSignIn;
//   String phone, password;
//   final _key = new GlobalKey<FormState>();

//   bool _secureText = true;

//   showHide() {
//     setState(() {
//       _secureText = !_secureText;
//     });
//   }

//   check() {
//     final form = _key.currentState;
//     if (form.validate()) {
//       form.save();
//       TestingPage();
//     }
//   }

//  login() async {
//     final response = await http.post("http://10.0.2.2/iDEAMART",
//         body: {"phone": phone, "password": password});
//     final data = jsonDecode(response.body);
//     int value = data['value'];
//     String pesan = data['message'];
//     String emailAPI = data['email'];
//     String namaAPI = data['nama'];
//     String id = data['id'];
//     if (value == 1) {
//       setState(() {
//         _loginStatus = LoginStatus.signIn;
//         savePref(value, emailAPI, namaAPI, id);
//       });
//       print(pesan);
//     } else {
//       print(pesan);
//     }
//   }

//   savePref(int value, String email, String nama, String id) async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     setState(() {
//       preferences.setInt("value", value);
//       preferences.setString("nama", nama);
//       preferences.setString("email", email);
//       preferences.setString("id", id);
//       preferences.commit();
//     });
//   }

//   var value;
//   getPref() async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     setState(() {
//       value = preferences.getInt("value");

//       _loginStatus = value == 1 ? LoginStatus.signIn : LoginStatus.notSignIn;
//     });
//   }

//   signOut() async {
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     setState(() {
//       preferences.setInt("value", null);
//       preferences.commit();
//       _loginStatus = LoginStatus.notSignIn;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Body(),
//     );
//   }
// }