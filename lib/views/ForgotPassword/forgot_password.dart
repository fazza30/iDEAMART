// ignore_for_file: sdk_version_ui_as_code

part of 'package:flutter_auth/view.dart';

class ForgotPassword extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final fpController = Get.put(ForgetPasswordController());

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
                            'LUPA PASSWORD',
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
                            textInputController: fpController.username,
                            title: "Username",
                            hint: "Masukkan username Anda",
                            keyboardType: TextInputType.text
                          )
                        ),
                        
                        // PasswordTextField
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                          child: InputPasswordFields(
                            textPasswordController: fpController.password,
                            title: "Password",
                            hint: "Masukkan password Anda",
                          )
                        ),
            
                        // PasswordTextField
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                          child: InputPasswordFields(
                            textPasswordController: fpController.confirmpassword,
                            title: "Konfirmasi Password",
                            hint: "Masukkan kembali password Anda",
                          )
                        ),
            
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                            child: RoundedButton(
                              text: "KONFIRMASI",
                              press: () {
                                fpController.handleForgetPassword();
                              },
                            )
                          ),
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
}