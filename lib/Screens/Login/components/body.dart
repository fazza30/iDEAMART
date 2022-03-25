import 'package:flutter/material.dart';
//import 'package:flutter_auth/Screens/Admin/Home/admin_home_screen.dart';
import 'package:flutter_auth/Screens/Signup/signup_screen.dart';
//import 'package:flutter_auth/Screens/User/Home/home_screen.dart';
import 'package:flutter_auth/controllers/login_controller.dart';
import 'package:flutter_auth/public_components/already_have_an_account_acheck.dart';
import 'package:flutter_auth/public_components/rounded_button.dart';
//import 'package:page_transition/page_transition.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  final userController = Get.put(LoginController());
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
                    color: Colors.black),
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
                        controller: userController.usernameEditingController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: 'Mis: Ranks72. . .',
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
                  )),
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
                    Obx(() => TextFormField(
                          controller: userController.passwordEditingController,
                          obscureText:
                              userController.txtPasswordVisibility.value,
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
                              onTap: () {
                                //setstate() diganti
                                userController.txtPasswordVisibility.value =
                                    !userController.txtPasswordVisibility.value;
                              },
                              child: Icon(
                                  userController.txtPasswordVisibility.value
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: Color(0xFF757575),
                                  size: 22),
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
                        )),
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
                        Get.to(() => SignUpScreen());
                      },
                    ),
                    RoundedButton(
                      text: "MASUK",
                      press: () {
                        userController.userLogin();
                      },
                    ),
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