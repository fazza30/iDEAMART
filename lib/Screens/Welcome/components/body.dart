import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            SvgPicture.asset(
              "assets/images/logo.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.05),
            Text(
              "iDEAMART",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32, fontFamily: "HindSiliguri", color: Color(0xFF5B67CA)),
            ),
            SizedBox(height: size.height * 0.05),
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40),
              child: Text(
                "Plan what you will do to be more organized for today, tomorrow and beyond",
                style: TextStyle(fontSize: 14, fontFamily: "HindSiliguri", color: Color(0xFF5B67CA)),
              ),
            ),
            SizedBox(height: size.height * 0.05),
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
            SizedBox(height: size.height * 0.02),
            InkWell(
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
                "DAFTAR",
                style: TextStyle(fontSize: 14, fontFamily: "HindSiliguri", color: Color(0xFF5B67CA)),
              ),
            ),
            // RoundedButton(
            //   text: "DAFTAR",
            //   color: kPrimaryLightColor,
            //   textColor: Colors.black,
            //   press: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) {
            //           return SignUpScreen();
            //         },
            //       ),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
