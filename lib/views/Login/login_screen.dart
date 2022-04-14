// ignore_for_file: non_constant_identifier_names

part of 'package:flutter_auth/view.dart';

class LoginScreen extends StatelessWidget {
  final userController = Get.put(LoginController());
  final RegisterController registerController = Get.put(RegisterController());
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Form(
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  /*if (!isKeyboard)*/ Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(30, 60, 30, 60),
                          child: Text(
                            'MASUK',
                            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                ),
                          ),
                        ),
                        
                        // UsernameTextField 
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: InputTextFields(
                            textInputController: registerController.username,
                            title: "Username",
                            hint: "Masukkan username Anda",
                            keyboardType: TextInputType.text
                          )
                        ),
                        
                        // PasswordTextField
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                          child: InputPasswordFields(
                            textPasswordController: registerController.password,
                            title: "Password",
                            hint: "Masukkan password Anda",
                          )
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                          child: InkWell(
                            onTap: () {
                              Get.to(() => ForgotPassword());
                            },
                            child: Text(
                              "Lupa password?",
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                fontSize: 14
                              )
                            )
                          )
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 50, 20, 0),
                          child: _loginActionButton()
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          )
        ),
      )
    );
  }

  Widget _loginActionButton() {
    return Column(
      children: <Widget>[
        AlreadyHaveAnAccountCheck(
          login: true,
          press: () {
            Get.to(() => SignUpScreen());
          },
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
          child: RoundedButton(
            text: "MASUK",
            press: () {
              userController.handleLogin();
            },
          )
        ),
      ],
    );
  }
}