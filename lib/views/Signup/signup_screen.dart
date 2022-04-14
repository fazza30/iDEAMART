part of 'package:flutter_auth/view.dart';

class SignUpScreen extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final RegisterController registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    // final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                /*if(!isKeyboard)*/ Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1.1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 60, 30, 20),
                        child: Text(
                          'DAFTAR',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Poppins',
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                                child: InputTextFields(
                                  textInputController: registerController.firstname,
                                  title: "Nama Depan",
                                  hint: "Mis : John",
                                  keyboardType: TextInputType.name
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: InputTextFields(
                                  textInputController: registerController.lastname,
                                  title: "Nama Belakang",
                                  hint: "Mis : Doe",
                                  keyboardType: TextInputType.name
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: InputTextFields(
                          textInputController: registerController.email,
                          title: "Email",
                          hint: "Masukkan email Anda",
                          keyboardType: TextInputType.emailAddress
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: Statue(),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: Hint(),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: InputTextFields(
                          textInputController: registerController.validasi,
                          title: "Jawaban Keamanan",
                          hint: "Masukkan jawaban Anda",
                          keyboardType: TextInputType.text,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: InputTextFields(
                          textInputController: registerController.username,
                          title: "Username",
                          hint: "Masukkan username Anda",
                          keyboardType: TextInputType.text
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                        child: InputPasswordFields(
                          textPasswordController: registerController.password,
                          title: "Password",
                          hint: "Masukkan password Anda",
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                          child: RegisterActionButton(),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget RegisterActionButton() {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(30, 10, 30, 30),
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
                  registerController.handleBackToLogin();
                },
              ),
            ],
          ),
          RoundedButton(
            text: "DAFTAR",
            press: () async {
              registerController.handleRegister();
            }
          ),
        ],
      ),
    );
  }
}