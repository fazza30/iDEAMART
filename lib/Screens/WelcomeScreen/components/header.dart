import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          
          // Image Icon
          Image.asset(
            "assets/images/logo-perusahaan.png",
            width: 320,
          ),
          // End of Title

          // Subtitle
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
            child: Text(
              'Pasarnya ide, salurkan idemu agar membuat perubahan baru',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontFamily: 'Poppins',
                fontSize: 14
              ),
            ),
          ),
          // End of Subtitle

        ],
      ),
    );
  }
}