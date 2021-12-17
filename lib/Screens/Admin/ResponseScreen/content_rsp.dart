import 'package:flutter/material.dart';

class ContentRsp extends StatefulWidget {
  const ContentRsp({Key key}) : super(key: key);

  @override
  _ContentRspState createState() => _ContentRspState();
}

class _ContentRspState extends State<ContentRsp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 620,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
      ),
    );
  }
}