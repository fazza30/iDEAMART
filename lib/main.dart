import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, 
      DeviceOrientation.portraitDown
    ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iDEAMART Apps',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
      ),
      home: WelcomeScreen(),
      // home: ResultScreen(),
      // home: ForgotPassword()
      // home: LoginScreen(),
      // home: SignUpScreen(),
      // home: HomePage(),
      // home: QuizPengelolaFeedbackView()
      // home: ProfileScreen(),
    );
  }
}
