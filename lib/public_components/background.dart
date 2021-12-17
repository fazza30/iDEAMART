import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Background extends StatefulWidget {
  const Background({Key key}) : super(key: key);

  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 110,
      decoration: BoxDecoration(
        color: Color(0xFF239BD8),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(45),
          bottomRight: Radius.circular(45),
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(45),
          bottomRight: Radius.circular(45),
          topLeft: Radius.circular(0),
          topRight: Radius.circular(0),
        ),
        child: SvgPicture.asset(
          'assets/images/jumbotron_bg.svg',
          width: double.infinity,
          height: 100,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}