import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
      child: SvgPicture.asset(
        'assets/images/logo.svg',
        width: 300,
        height: 300,
        fit: BoxFit.cover,
      ),
    );
  }
}