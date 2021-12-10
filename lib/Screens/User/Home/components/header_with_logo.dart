import 'package:flutter/material.dart';

class HeaderWithLogo extends StatefulWidget {
  const HeaderWithLogo({Key key}) : super(key: key);

  @override
  _HeaderWithLogoState createState() => _HeaderWithLogoState();
}

class _HeaderWithLogoState extends State<HeaderWithLogo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
        color: Color(0xFF239BD8),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(55),
          bottomRight: Radius.circular(55),
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Hai, John !',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    fontFamily: 'SourceSansPro',
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Icon(
                  Icons.notifications,
                  color: Colors.white,
                  size: 30,
                )
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0, 5),
            child: Material(
              color: Colors.transparent,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                width: 375,
                height: 127,
                decoration: BoxDecoration(
                  color: Color(0xFFEEEEEE),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Colors.transparent,
                  ),
                ),
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
                      width: 200,
                      height: 80,
                      fit: BoxFit.contain,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}