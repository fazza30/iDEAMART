import 'dart:convert';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_auth/env/env.dart';
import 'package:flutter_auth/models/LoginS_model.dart';
import 'package:http/http.dart' as http;
//import 'package:shared_preferences/shared_preferences.dart';

class LoginService {
  static Future<ResponseSuccessLogin> loginUser(
      String username, String password) async {
    final response = await http.post(Uri.parse(Envirotment.endpointLoginUser),
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(
            <String, String>{"username": username, "password": password}));

    if (response.statusCode == 200) {
      //print(response.body);
      // Map<String,dynamic>respData = jsonDecode(response.body);
      // print(respData['user']);
      return ResponseSuccessLogin.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Login User');
    }
  }
}
