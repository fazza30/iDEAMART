import 'package:flutter/material.dart';

class QuestionCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'Question 1 /',
            style: Theme.of(context).textTheme.headline1.copyWith(
              fontFamily: 'SourceSansPro',
              color: Colors.white,
              fontSize: 30,
            ),
          ),
          Text(
            ' 3',
            style: Theme.of(context).textTheme.headline2.copyWith(
              fontFamily: 'SourceSansPro',
              color: Colors.white,
              fontSize: 26
            ),
          ),
        ],
      ),
    );
  }
}