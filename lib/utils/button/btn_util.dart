import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String textButton;
  double tinggiButton;

  CustomButton({this.textButton, this.tinggiButton});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: tinggiButton ?? 10,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(colors: [
            Color.fromRGBO(143, 148, 251, 1),
            Color.fromRGBO(143, 148, 251, .6),
          ])),
      child: Center(
        child: Text(
          (textButton) ?? "Please Give your title",
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
