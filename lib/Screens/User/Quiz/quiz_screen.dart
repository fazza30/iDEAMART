import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/User/Quiz/components/body.dart';
import 'package:flutter_auth/constants.dart';

class QuizScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      body: Body(),
      backgroundColor: kPrimaryColor,
    );
  }
}

