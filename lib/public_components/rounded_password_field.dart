import 'package:flutter/material.dart';
import 'package:flutter_auth/controllers/register_controller.dart';
import 'package:get/get.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;

  RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  //final UserController userController = Get.put(UserController());
  //TextEditingController txtPassword;
  bool txtPasswordVisibility;
  //TextEditingController txtPhoneController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    //txtPassword = TextEditingController();
    txtPasswordVisibility = false;
    //txtPhoneController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            //controller: userController.passwordEditingController,
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
    );
  }
}

class Password extends StatelessWidget {
  final userController = Get.put(
      RegisterController()); //inisialisasi menggunakan get dari RegisterController
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Password Label
          Padding(
            padding:
                EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
            child: Text(
              'Kata Sandi',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(
                    fontFamily: 'Poppins',
                    color: Colors.black,
                  ),
            ),
          ),

          // Password TextField
          Obx((() => TextFormField(
                controller: userController.passwordEditingController,
                obscureText: userController.txtPasswordVisibility.value,
                decoration: InputDecoration(
                  hintText: 'Buat password anda disini',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
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
                      size: 22,
                    ),
                  ),
                ),
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontFamily: 'Poppins'),
                validator: (val) {
                  if (val.isEmpty) {
                    return 'Bagian ini harus diisi !';
                  }
                  return null;
                },
              )
            )
          )
        ],
      ),
    );
  }
}