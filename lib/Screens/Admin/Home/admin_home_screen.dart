import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Admin/Home/components/category.dart';
import 'package:flutter_auth/public_components/background.dart';
import 'package:flutter_auth/public_components/header.dart';
import 'package:flutter_auth/public_components/jumbotron.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({Key key}) : super(key: key);

  @override
  _AdminHomeScreenState createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {
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
            color: Color(0xFFEEEEEE),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                children: [
                  Background(),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                    child: Header(),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(50, 55, 50, 0),
                    child: Jumbotron(),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 165, 30, 0),
                    child: Category(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}