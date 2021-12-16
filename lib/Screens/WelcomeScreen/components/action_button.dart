import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/public_components/rounded_button.dart';
import 'package:page_transition/page_transition.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          
          // LoginButton
          RoundedButton(
            text: "MASUK",
            press: () {
              Navigator.push(
                context, 
                PageTransition( 
                  type: PageTransitionType.bottomToTop,
                  duration: Duration(milliseconds: 300),
                  reverseDuration: Duration(milliseconds: 300),
                  child: LoginScreen()
                )
              );
            },
          ),
          // End of Login Button

          // RegisterButton
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
            child: InkWell(
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.bottomToTop,
                    duration: Duration(milliseconds: 300),
                    reverseDuration: Duration(milliseconds: 300),
                    child: SignUpScreen(),
                  ),
                );
              },
              child: Text(
                'DAFTAR',
                style: Theme.of(context).textTheme.bodyText1.copyWith(
                  fontFamily: 'Poppins',
                  color: Color(0xFF239BD8),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
          ),
          // End of Register Button

        ],
      ),
    );
  }
}