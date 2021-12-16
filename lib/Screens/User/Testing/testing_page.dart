import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/User/Testing/components/answers_card.dart';
import 'package:flutter_auth/Screens/User/Testing/components/nav_button.dart';
import 'package:flutter_auth/Screens/User/Testing/components/question_card.dart';
import 'package:flutter_auth/Screens/User/Testing/components/question_counter.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';

class TestingPage extends StatefulWidget {
  const TestingPage({Key key}) : super(key: key);

  @override
  _TestingPageState createState() => _TestingPageState();
}

class _TestingPageState extends State<TestingPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF239BD8),
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFF239BD8),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                QuestionCounter(),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 20),
                  child: FAProgressBar(
                    currentValue: 80,
                    displayText: '%',
                    backgroundColor: Color(0xFFFFFFFF),
                    progressColor: Color(0xFF99CCFF),
                  )
                ),
                Container(
                  width: 350,
                  height: 550,
                  decoration: BoxDecoration(
                    color: Color(0xFFEEEEEE),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        QuestionCard(),
                        AnswersCard(),
                        NavButton(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}