import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Admin/Details/components/asset_cb.dart';

class ChoiceBasedDetails extends StatefulWidget {
  const ChoiceBasedDetails({Key key}) : super(key: key);

  @override
  _ChoiceBasedDetailsState createState() =>
      _ChoiceBasedDetailsState();
}

class _ChoiceBasedDetailsState extends State<ChoiceBasedDetails> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: AppBar(
          backgroundColor: Color(0xFFEEEEEE),
          iconTheme: IconThemeData(color: Colors.black),
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
                child: HeadCB(),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 15, 30, 0),
                child: ContentCB(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}