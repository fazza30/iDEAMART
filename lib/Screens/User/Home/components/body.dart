import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/User/Home/components/choice_based.dart';
import 'package:flutter_auth/Screens/User/Home/components/mandatory.dart';
import 'package:flutter_auth/Screens/User/Home/components/my_progress.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 550,
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Mandatory(),
          ChoiceBased(),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: MyProgress(),
          ),
        ],
      ),
    );
  }
}

