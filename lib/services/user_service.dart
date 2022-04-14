part of 'service.dart';

class UserService {

  static Future<ApiReturnValue> registerUser(String firstname, String lastname, String email, String profesi, String pertanyaan, String validasi, String username, String password) async {
    final response = await http.post(
        Uri.parse(Endpoint.apiRegister),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, String>{
          "firstname" : firstname,
          "lastname" : lastname,
          "email" : email,
          "profesi" : profesi,
          "pertanyaan" : pertanyaan,
          "validasi" : validasi,
          "username" : username,
          "password" : password
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: UserRegisterSuccess.fromJson(jsonDecode(response.body)));
      case 400:
        return ApiReturnValue(value: UserRegisterError.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }


  static Future<ApiReturnValue> loginUser(String username, String password) async {
    final response = await http.post(
        Uri.parse(Endpoint.apiLogin),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, String>{
          "username" : username,
          "password" : password
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: UserLoginSuccess.fromJson(jsonDecode(response.body)));
      case 400:
        return ApiReturnValue(value: UserLoginError.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

  static Future<dynamic> uploadFile(filePath, String id) async {
    try {
      var formData = FormData.fromMap({
        'profile_picture': await MultipartFile.fromFile(filePath),
      });

      Response response = await Dio().put(Endpoint.apiUpdateUser+id, data: formData);
      return response;
    }on DioError catch (e) {
      return e.response;
    } catch(e){
    }
  }

  static Future<ApiReturnValue> updateUser(String firstname, String lastname, String username, String email, String phone, String profesi, String id) async {
    final response = await http.put(
        Uri.parse(Endpoint.apiUploadUser+id),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, String>{
          "firstname" : firstname,
          "lastname" : lastname,
          "username" : username,
          "email" : email,
          "phone" : phone,
          "profesi" : profesi
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: UserUpdateProfileSuccess.fromJson(jsonDecode(response.body)));
      case 400:
        return ApiReturnValue(value: UserUpdateProfileError.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

  static Future<ApiReturnValue> updatePasswordUser(String username, String password, String confirm) async {
    final response = await http.put(
        Uri.parse(Endpoint.apiUpdatePasswordUser),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, String>{
          "username" : username,
          "password" : password,
          "confirm" : confirm
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: UserUpdatePasswordSuccess.fromJson(jsonDecode(response.body)));
      case 400:
        return ApiReturnValue(value: UserUpdatePasswordError.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

}