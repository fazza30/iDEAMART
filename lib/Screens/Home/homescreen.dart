import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/components/body.dart';
import 'package:flutter_auth/constants.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Body(),
    );
  }
}
