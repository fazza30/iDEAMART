// Import packages
import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Admin/Home/admin_home_screen.dart';
import 'package:flutter_auth/Screens/Login/components/action_button.dart';
import 'package:flutter_auth/Screens/User/Home/home_screen.dart';
import 'package:flutter_auth/helperUrl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_auth/models/Login_model.dart';
import 'dart:convert';

// Declaration SecureStorage
final storage = FlutterSecureStorage();

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // Declaration
  TextEditingController txtUsername;
  TextEditingController txtPassword;
  bool isLoading=false;
  bool txtPasswordVisibility;
  ScaffoldMessengerState scaffoldMessenger;
  final formKey = GlobalKey<FormState>();
  
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();
  String checklogin = "Admin";
  Loginuser dataResponse = Loginuser();

  // SharedPrefference Declaration
  login(username,password) async {
    Map data = {
      'username': username,
      'password': password
    };
    print(data.toString());
    var response = await http.post(Uri.parse(login_rest),
        headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded"
        },
        body: data,
        encoding: Encoding.getByName("utf-8")
    );
    
    setState((){
      isLoading=false;
    });

    print(response.body);
    if (response.statusCode == 200) {
      Map<String,dynamic>respData=json.decode(response.body);
      print(respData['Username']);
      if(respData["Login_type"] == "Admin"){
        savePref(respData['Username'], respData['Login_type'], respData['Token']);
        await Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => AdminHomeScreen(),
          ),
        );
      }else{
        savePref(respData['Username'], respData['Login_type'], respData['Token']);
        Navigator.pushReplacement(
          context, 
          PageTransition( 
            type: PageTransitionType.bottomToTop,
            duration: Duration(milliseconds: 300),
            reverseDuration: Duration(milliseconds: 300),
            child: HomePage()
          )
        );
      }
      
    }else{
      Map<String,dynamic>respData=json.decode(response.body);
      print(respData['message']);
    }
  }

  savePref(String username, String loginType, String token) async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.setString("username", username);
      localStorage.setString("logintype", loginType);
      localStorage.setString("token", token);
  }

  // InitState
  @override
  void initState() {
    super.initState();
    txtPassword = TextEditingController();
    txtPasswordVisibility = false;
    txtUsername = TextEditingController();
  }

  // Code Playground
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.always,
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

                // Username Field
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          
                          // Username Text
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                            child: Text(
                              'Username',
                              style: Theme.of(context).textTheme.bodyText1.copyWith(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                            ),
                          ),
                          
                          // Username TextField
                          TextFormField(
                            controller: username,
                            obscureText: false,
                            decoration: InputDecoration(
                              hintText: 'Mis: johndoe123',
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
                            ),
                            style: Theme.of(context).textTheme.bodyText1.copyWith(
                              fontFamily: 'Poppins'
                            ),
                            validator: (val) {
                              if (val.isEmpty) {
                                return 'Bagian ini harus diisi !';
                              }
                              return null;
                            },
                          ),
                        ],
                      ),
                      
                      // Password Field
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                            // Password Text 
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(5, 0, 0, 5),
                              child: Text(
                                'Kata Sandi',
                                style: Theme.of(context).textTheme.bodyText1.copyWith(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            
                            // Password Field
                            TextFormField(
                              controller: password,
                              obscureText: txtPasswordVisibility,
                              decoration: InputDecoration(
                                hintText: 'Masukkan password anda',
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
                                  onTap: () => setState(
                                    () => txtPasswordVisibility =
                                        !txtPasswordVisibility,
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
                              style:Theme.of(context).textTheme.bodyText1.copyWith(
                                fontFamily: 'Poppins'
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Bagian ini harus diisi !';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                
                // Action Button
                ActionButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}