// ignore_for_file: must_be_immutable
part of 'package:flutter_auth/view.dart';

class ProfileScreen extends StatelessWidget {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    // final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return SafeArea(
      child: Scaffold(
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
              Navigator.pop(
                context
              );
            },
          ),
          title: Text(
            'Profil',
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
            onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
            child: Column(
              mainAxisSize : MainAxisSize.max,
              children: <Widget>[
                /*if (!isKeyboard)*/ Container(
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
                          height: 250,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.03, 0.59),
                        child: Text(
                          '<email_pengguna>',
                          style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
                          style: Theme.of(context).textTheme.bodyText1?.copyWith(
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
                    child: Column(
                      children: <Widget>[
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
                                    textInputController: profileController.firstname,
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
                                    textInputController: profileController.lastname,
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
                          child: Statue(),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                          child: InputTextFields(
                            textInputController: profileController.email,
                            title: "Email",
                            hint: "Masukkan email Anda",
                            keyboardType: TextInputType.emailAddress
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                          child: InputTextFields(
                            textInputController: profileController.username,
                            title: "Username",
                            hint: "Masukkan username Anda",
                            keyboardType: TextInputType.text
                          ),
                        ),
                        /*
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                          child: InputPasswordFields(
                            textPasswordController: registerController.password,
                            title: "Password",
                            hint: "Masukkan password Anda",
                          ),
                        ),
                        */
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () async {
                                  // await launchURL('localhost');
                                },
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Container(
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF239BD8),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Edit',
                                          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                    ),
                  ),
                ),
              ]
            )
          ),
        ),
      )
    );
  }
}