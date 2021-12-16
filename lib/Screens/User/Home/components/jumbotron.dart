import 'package:flutter/material.dart';

class Jumbotron extends StatefulWidget {
  const Jumbotron({Key key}) : super(key: key);

  @override
  _JumbotronState createState() => _JumbotronState();
}

class _JumbotronState extends State<Jumbotron> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFFEEEEEE),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/logo-uin.png',
                width: 100,
                height: 100,
                fit: BoxFit.contain,
              ),
              Image.asset(
                'assets/images/pusat-karir-uin.png',
                width: 150,
                height: 100,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}