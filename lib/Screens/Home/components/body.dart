import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Home/components/header_with_logo.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithLogo(size: size)
        ],
      ),
    );
  }
}