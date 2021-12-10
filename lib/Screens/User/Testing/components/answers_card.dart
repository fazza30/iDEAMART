import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnswersCard extends StatefulWidget {
  const AnswersCard({Key key}) : super(key: key);

  @override
  _AnswersCardState createState() => _AnswersCardState();
}

class _AnswersCardState extends State<AnswersCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
      child: GridView(
        padding: EdgeInsets.zero,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 1,
          childAspectRatio: 1,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(45),
              border: Border.all(
                color: Color(0xFFC4C4C4),
                width: 3,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
              child: SvgPicture.asset(
                'assets/icons/strongly-agree.svg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(45),
              border: Border.all(
                color: Color(0xFFC4C4C4),
                width: 3,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
              child: SvgPicture.asset(
                'assets/icons/agree.svg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(45),
              border: Border.all(
                color: Color(0xFFC4C4C4),
                width: 3,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
              child: SvgPicture.asset(
                'assets/icons/disagree.svg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Color(0xFFEEEEEE),
              borderRadius: BorderRadius.circular(45),
              border: Border.all(
                color: Color(0xFFC4C4C4),
                width: 3,
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(6, 6, 6, 6),
              child: SvgPicture.asset(
                'assets/icons/strongly-disagree.svg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}