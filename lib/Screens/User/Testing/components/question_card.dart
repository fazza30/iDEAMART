import 'package:flutter/material.dart';

class QuestionCard extends StatefulWidget {
  const QuestionCard({Key key}) : super(key: key);

  @override
  _QuestionCardState createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
      child: Text(
        'Kegiatan Pusat Karier dapat meningkatkan kemampuan mahasiswa/ alumni untuk lebih siap memasuki dunia karier',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline3.copyWith(
          fontFamily: 'Source Sans Pro',
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}