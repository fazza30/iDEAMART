import 'dart:convert';
import 'package:flutter_auth/env/env.dart';
import 'package:flutter_auth/models/Register_model.dart';
import 'package:http/http.dart' as http;

class RegisterService {
  static Future<CreateUser> createNewUser(String first_name, String last_name,
      String username, String password) async {
    final response = await http.post(Uri.parse(Envirotment.endpointCreateUser),
        headers: <String, String>{
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, String>{
          "first_name": first_name,
          "last_name": last_name,
          "username": username,
          "password": password
        }));

    if (response.statusCode == 200) {
      print(response.body);
      return CreateUser.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to Create User');
    }
  }
}
