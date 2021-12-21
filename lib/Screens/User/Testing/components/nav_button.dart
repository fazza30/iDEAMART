import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/User/Home/home_screen.dart';
import 'package:flutter_auth/Screens/User/Result/result_screen.dart';
import 'package:page_transition/page_transition.dart';

class NavButton extends StatefulWidget {
  const NavButton({Key key}) : super(key: key);

  @override
  _NavButtonState createState() => _NavButtonState();
}

class _NavButtonState extends State<NavButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 190, 0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.pushAndRemoveUntil(
                  context,
                  PageTransition(
                    type: PageTransitionType.leftToRight,
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    child: HomePage(),
                  ),
                  (r) => false,
                );
              },
              child: Container(
                width: 60,
                height: 40,
                decoration: BoxDecoration(
                  color: Color(0xFF005DFC),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.arrow_left_rounded,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () async {
              await Navigator.pushAndRemoveUntil(
                context,
                PageTransition(
                  type: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 300),
                  reverseDuration: Duration(milliseconds: 300),
                  child: ResultScreen(),
                ),
                (r) => false,
              );
            },
            child: Container(
              width: 60,
              height: 40,
              decoration: BoxDecoration(
                color: Color(0xFF005DFC),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.arrow_right_rounded,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}