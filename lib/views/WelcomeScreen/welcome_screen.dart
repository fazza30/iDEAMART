// ignore_for_file: non_constant_identifier_names

part of 'package:flutter_auth/view.dart';

class WelcomeScreen extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final WelcomeController welcomeController = Get.put(WelcomeController());

  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/images/logo.svg',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 30, 15, 15),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/logo-perusahaan.png',
                        height: 40,
                        fit: BoxFit.cover
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(30, 20, 30, 0),
                    child: Text(
                      'Pasarnya ide, salurkan idemu agar membuat perubahan baru',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  RoundedButton(
                    text: "MASUK",
                    press: () {
                      welcomeController.handleToLogin();
                    },
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: InkWell(
                      onTap: () async {
                        welcomeController.handleToRegister();
                      },
                      child: Text(
                        'DAFTAR',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                              color: Color(0xFF239BD8),
                              fontSize: 16,
                            ),
                      ),
                    ),
                  )
                ],
              )
            ),
          ],
        ),
      )
    );
  }
}
