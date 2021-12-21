import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/components/body.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'DAFTAR',
      style: Theme.of(context).textTheme.headline1.copyWith(
          fontFamily: 'Poppins',
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black),
    );
  }
}
