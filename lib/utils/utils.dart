import 'package:flutter/material.dart';

abstract class CustomButtonAbs extends StatelessWidget {
  const CustomButtonAbs({Key key}) : super(key: key);
}

abstract class handleButton {
  VoidCallback onPressButton();
  VoidCallback onPressButtonRegister();
}

class UnderstandButtonOop extends CustomButtonAbs {
  String textButton;
  double tinggiButton;
  VoidCallback handleButton;

  UnderstandButtonOop({this.textButton, this.tinggiButton, this.handleButton});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (handleButton != null)
          ? handleButton
          : () {
              print("abc");
            },
      child: Text(textButton ?? "Please Give"),
    );
  }
}
