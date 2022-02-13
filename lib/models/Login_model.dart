// ignore_for_file: non_constant_identifier_names, missing_return

import 'dart:convert';
import 'package:flutter_auth/helperUrl.dart';
import 'package:http/http.dart' as http;

class Loginuser {
  String Username, Login_type, Message;

  Loginuser({this.Username, this.Login_type, this.Message});

  static Future<Loginuser> connectAPI(String username, String password) async {
    
    Uri url = Uri.parse(login_rest);

    var hasilResponse = await http.post(
      url,
      headers: {
          "Accept": "application/json",
          "Content-Type": "application/x-www-form-urlencoded"
      },
      body: {
        "username": username,
        "password": password,
      },
      encoding: Encoding.getByName("utf-8")
    );

    print(hasilResponse.statusCode);
    if(hasilResponse.statusCode == 200){
      var data = json.decode(hasilResponse.body);
      print(data['Username']);
      if(data["Login_type"] == "Admin"){
        String Logintype = "1";
        return Loginuser(
          Username: data["Username"],
          Login_type: Logintype,
        );
      }else{
        String Logintype = "2";
        return Loginuser(
          Username: data["Username"],
          Login_type: Logintype,
        );
      }
      
    }else{
      var data = json.decode(hasilResponse.body);
      print(data['message']);
      return Loginuser(
        Message: data["message"],
      );
    }
    
  }
}