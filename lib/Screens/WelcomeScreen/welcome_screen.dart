import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/WelcomeScreen/components/body.dart';
import 'package:flutter_auth/Screens/Admin/Home/admin_home_screen.dart';
import 'package:flutter_auth/Screens/User/Home/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool isAuth = false;
  bool checkUser = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    super.initState();
    _checkIfLoggedIn();
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var logintype = localStorage.getString('logintype');
    if(logintype != null){
      if(mounted){
        setState(() {
          isAuth = true;
          if(logintype == "Admin"){
            checkUser = true;
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if(isAuth){
      if(checkUser){
        child = AdminHomeScreen();
      }else{
        child = HomePage();
      }
    } else{
      child = Body();
    }

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: child,
    );
  }
}