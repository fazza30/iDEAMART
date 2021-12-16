import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAnAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Saya tidak memiliki akun, " : "Saya sudah memiliki akun, ",
          style: TextStyle(color: Colors.black, fontFamily: "Poppins"),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "DAFTAR" : "MASUK",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins"
            ),
          ),
        )
      ],
    );
  }
}
