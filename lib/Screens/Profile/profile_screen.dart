// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Profile/components/content.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';

// import '../../controllers/user_controller.dart';
class ProfileScreen extends StatelessWidget {
  TextEditingController txtName1Controller;
  TextEditingController txtName2Controller;
  TextEditingController txtPhoneController1;
  TextEditingController txtPhoneController2;
  TextEditingController txtPasswordController;
  bool txtPasswordVisibility = true;
  // final UserController userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF239BD8),
        automaticallyImplyLeading: false,
        leading: IconButton(
          color: Colors.transparent,
          splashRadius: 30,
          icon: Icon(
            Icons.chevron_left_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Text(
          'Profil',
          style: Theme.of(context).textTheme.bodyText1.copyWith(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 18,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              // ignore: sdk_version_ui_as_code
              if (!isKeyboard) Container(
                width: MediaQuery.of(context).size.width,
                height: 150,
                decoration: BoxDecoration(
                  color: Color(0xFF239BD8),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(45),
                    bottomRight: Radius.circular(45),
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                  ),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(45),
                        bottomRight: Radius.circular(45),
                        topLeft: Radius.circular(0),
                        topRight: Radius.circular(0),
                      ),
                      child: SvgPicture.asset(
                        'assets/images/jumbotron_bg.svg',
                        width: MediaQuery.of(context).size.width,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.03, 0.59),
                      child: Text(
                        '<email_pengguna>',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal,
                              fontSize: 14
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.02, -0.69),
                      child: Container(
                        width: 70,
                        height: 70,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/logo-uin.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.03, 0.26),
                      child: Text(
                        '<nama_pengguna>',
                        style: Theme.of(context).textTheme.bodyText1.copyWith(
                          fontFamily: 'Poppins',
                          fontSize: 14
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 560,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(0),
                  ),
                  child: Content()
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}