import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Admin/Home/admin_home_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
import 'package:flutter_auth/Screens/User/Home/home_screen.dart';
import 'package:flutter_auth/public_components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/public_components/rounded_button.dart';
import 'package:page_transition/page_transition.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController txtPhone;
  TextEditingController txtPassword;
  bool txtPasswordVisibility;
  TextEditingController txtPhoneController;

  @override
  void initState() {
    super.initState();
    txtPassword = TextEditingController();
    txtPasswordVisibility = false;
    txtPhoneController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'MASUK',
                style: Theme.of(context).textTheme.headline1.copyWith(
                  fontFamily: 'Poppins',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),

              // Phone Field
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                      child: Text(
                        'No. Telepon',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                      ),
                    ),
                    TextFormField(
                      controller: txtPhone,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Mis: 0812345. . .',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontFamily: 'Poppins'),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF1F3EB),
                      ),
                      style: Theme.of(context).textTheme.bodyText1,
                      keyboardType: TextInputType.number,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Bagian ini harus diisi !';
                        }
                        if (val.length < 11) {
                          return 'Nomor telepon tidak valid !';
                        }
                        return null;
                      },
                    ),
                  ],
                )
              ),
              // End of Phone Field

              // Password Field
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                      child: Text(
                        'Kata Sandi',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontFamily: 'Poppins',
                              color: Colors.black,
                            ),
                      ),
                    ),
                    TextFormField(
                      controller: txtPassword,
                      obscureText: !txtPasswordVisibility,
                      decoration: InputDecoration(
                        hintText: 'Masukkan password anda',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(fontFamily: 'Poppins'),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Color(0xFFF1F3EB),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => txtPasswordVisibility = !txtPasswordVisibility,
                          ),
                          child: Icon(
                            txtPasswordVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Color(0xFF757575),
                            size: 22,
                          ),
                        ),
                      ),
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontFamily: 'Poppins'),
                      keyboardType: TextInputType.number,
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Bagian ini tidak boleh kosong !';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              // End of Password Field
              
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 200, 30, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AlreadyHaveAnAccountCheck(
                      login: true,
                      press: () {
                        Navigator.push(
                          context,
                          PageTransition( 
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: SignUpScreen()
                          )
                        );
                      },
                    ),
                    RoundedButton(
                      text: "MASUK",
                      press: () {
                        Navigator.push(
                          context, 
                          PageTransition( 
                            type: PageTransitionType.bottomToTop,
                            duration: Duration(milliseconds: 300),
                            reverseDuration: Duration(milliseconds: 300),
                            child: HomePage()
                          )
                        );
                      },
                    ),
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AdminHomeScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Admin Login (alpha tester)',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Poppins',
                          fontSize: 10
                        )
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}