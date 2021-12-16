import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/User/Home/components/background.dart';
import 'package:flutter_auth/Screens/User/Home/components/body.dart';
import 'package:flutter_auth/Screens/User/Home/components/header.dart';
import 'package:flutter_auth/Screens/User/Home/components/jumbotron.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xFFEEEEEE),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Background(),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 100, 50, 0),
                      child: Header(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(50, 165, 50, 0),
                      child: Jumbotron(),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 280, 30, 0),
                      child: Body(),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
