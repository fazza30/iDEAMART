import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Admin/ResponseScreen/content_rsp.dart';
import 'package:flutter_auth/Screens/Admin/ResponseScreen/head_rsp.dart';

class ResponsePage extends StatefulWidget {
  const ResponsePage({Key key}) : super(key: key);

  @override
  _ResponsePageState createState() => _ResponsePageState();
}

class _ResponsePageState extends State<ResponsePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: AppBar(
          backgroundColor: Color(0xFFEEEEEE),
          automaticallyImplyLeading: false,
          actions: [],
          elevation: 0,
        ),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                child: HeadRsp(),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 15, 30, 0),
                child: ContentRsp(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}