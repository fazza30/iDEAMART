import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_auth/Screens/User/Home/components/choice_based.dart';
import 'package:flutter_auth/Screens/User/Home/components/header_with_logo.dart';
import 'package:flutter_auth/Screens/User/Home/components/mandatory.dart';

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
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            HeaderWithLogo(),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 60, 0, 0),
              child: Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 10),
                      child: Text(
                        'Mandatory',
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.headline1.copyWith(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Mandatory(),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 10, 0, 10),
                      child: Text(
                        'Choice-based',
                        textAlign: TextAlign.start,
                        style: Theme.of(context).textTheme.headline1.copyWith(
                          fontFamily: 'SourceSansPro',
                          fontSize: 20,
                        ),
                      ),
                    ),
                    ChoiceBased()
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}