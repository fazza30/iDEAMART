import 'dart:convert';

import 'package:flutter_auth/env/env.dart';
import 'package:flutter_auth/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserService {
  static Future<CreateUser> createNewUser(
      String firstname, String lastname, String phone, String password) async {
    final response = await http.post(Uri.parse(Envirotment.endpointCreateUser),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          "firstname": firstname,
          "lastname": lastname,
          "phone": phone,
          "password": password
        }));

    if (response.statusCode == 200) {
      print(response.body);
      return CreateUser.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Create User');
    }
  }

  static Future<LoginUser> loginUser(String phone, String password) async {
    final response = await http.post(Uri.parse(Envirotment.endpointLoginUser),
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:
            jsonEncode(<String, String>{"phone": phone, "password": password}));

    if (response.statusCode == 200) {
      print(response.body);
      return LoginUser.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Login User');
    }
  }
  /*
  static Future<ReadUser> readUser() async {
    final response = await http.get(Uri.parse(Envirotment.endpointReadUser));

    if (response.statusCode == 200) {
      return ReadUser.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load User');
    }
  }
  */

}
