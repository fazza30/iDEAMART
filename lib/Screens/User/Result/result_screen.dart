import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Spacer(flex: 3),
              Text(
                "Jawaban Anda (Coming Soon)",
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    .copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "SourceSansPro"
                    ),
              ),
              Spacer(flex: 3),
            ],
          )
        ],
      ),
    );
  }
}