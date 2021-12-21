import 'dart:convert';

import 'package:flutter_auth/env/env.dart';
import 'package:flutter_auth/models/user_model.dart';
import 'package:http/http.dart' as http;

class UserService {
  static Future<ReadUser> readUser() async {
    final response = await http.get(Uri.parse(Envirotment.endpointReadUser));

    if (response.statusCode == 200) {
      return ReadUser.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load User');
    }
  }

  static Future<CreateUser> createNewUser(String firstname, String lastname,
      String phone, String email, String username, String password) async {
    final response = await http.post(Uri.parse(Envirotment.endpointCreateUser),
        body: jsonEncode(<String, String>{
          "firstname": firstname,
          "lastname": lastname,
          "phone": phone,
          "email": email,
          "username": username,
          "password": password
        }));

    if (response.statusCode == 200) {
      print(response.body);
      return CreateUser.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Create Mahasiwa');
    }
  }

  static Future<LoginUser> loginUser(String phone, String password) async {
    final response = await http.post(Uri.parse(Envirotment.endpointLoginUser),
        body:
            jsonEncode(<String, String>{"phone": phone, "password": password}));

    if (response.statusCode == 200) {
      print(response.body);
      return LoginUser.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Login User');
    }
  }
}
