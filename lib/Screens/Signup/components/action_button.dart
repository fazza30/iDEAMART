import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/public_components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/public_components/rounded_button.dart';
import 'package:page_transition/page_transition.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(30, 100, 30, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.pop(
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
            ],
          ),
          RoundedButton(
            text: "MASUK",
            press: () async {
              await showDialog(
                context: context,
                builder: (alertDialogContext) {
                  return AlertDialog(
                    title: Text('Daftar Akun'),
                    content: Text(
                        'Selamat, akun anda telah terdaftar !'),
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(alertDialogContext),
                        child: Text('OK'),
                      ),
                    ],
                  );
                },
              );
              await Navigator.pushAndRemoveUntil(
                context,
                PageTransition(
                  type: PageTransitionType.bottomToTop,
                  duration: Duration(milliseconds: 300),
                  reverseDuration: Duration(milliseconds: 300),
                  child: LoginScreen(),
                ),
                (r) => false,
              );
            }
          ),
        ],
      ),
    );
  }
}