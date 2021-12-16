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
          
          // Title
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'iDEAMART',
                style: Theme.of(context).textTheme.headline1.copyWith(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                ),
              ),
              Text(
                '.',
                style: Theme.of(context).textTheme.headline1.copyWith(
                  fontFamily: 'Poppins',
                  color: Colors.red,
                  fontSize: 35,
                ),
              ),
            ],
          ),
          // End of Title

          // Subtitle
          Text(
            'Pasarnya ide, salurkan idemu agar membuat perubahan baru',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontFamily: 'Poppins',
              fontSize: 14
            ),
          ),
          // End of Subtitle

        ],
      ),
    );
  }
}