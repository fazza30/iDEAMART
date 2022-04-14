// ignore_for_file: non_constant_identifier_names

part of 'model.dart';

// class UserForget {
//   int id_user;
//   UserForget({required this.id_user});
//
//   factory UserForget.fromJson(Map<String, dynamic> json){
//     return UserForget(
//         id_user: json["id_user"],
//     );
//   }
// }

class UserUpdatePasswordSuccess {
  bool status;
  String message;

  UserUpdatePasswordSuccess({required this.message, required this.status});

  factory UserUpdatePasswordSuccess.fromJson(Map<String, dynamic> json){
    return UserUpdatePasswordSuccess(message: json["message"], status: json["status"]);
  }
}
class UserUpdatePasswordError {
  bool status;
  String message;
  UserUpdatePasswordError({required this.message, required this.status});

  factory UserUpdatePasswordError.fromJson(Map<String, dynamic> json){
    return UserUpdatePasswordError(message: json["message"], status: json["status"]);
  }
}

class UserUpdateProfileSuccess {
  bool status;
  String message;
  UserUpdateProfileSuccess({required this.message, required this.status});

  factory UserUpdateProfileSuccess.fromJson(Map<String, dynamic> json){
    return UserUpdateProfileSuccess(message: json["message"], status: json["status"]);
  }
}

class UserUpdateProfileError {
  bool status;
  String message;
  UserUpdateProfileError({required this.message, required this.status});

  factory UserUpdateProfileError.fromJson(Map<String, dynamic> json){
    return UserUpdateProfileError(message: json["message"], status: json["status"]);
  }
}

class UserRegisterError {
  bool status;
  String message;
  UserRegisterError({required this.message, required this.status});

  factory UserRegisterError.fromJson(Map<String, dynamic> json){
    return UserRegisterError(message: json["message"], status: json["status"]);
  }
}

class UserRegisterSuccess {
  bool status;
  String message;
  UserRegisterSuccess({required this.message, required this.status});

  factory UserRegisterSuccess.fromJson(Map<String, dynamic> json){
    return UserRegisterSuccess(message: json["message"], status: json["status"]);
  }
}

class User {
  int id_user;
  String firstname;
  String lastname;
  String phone;
  String email;
  String username;
  String profesi;
  int id_role;
  String profile_picture;
  String validasi;
  String pertanyaan;

  User({required this.username, required this.email, required this.firstname, required this.phone, required this.lastname, required this.id_role, required this.id_user, required this.profesi, required this.profile_picture, required this.validasi, required this.pertanyaan});

  factory User.fromJson(Map<String, dynamic> json){
    return User(
        username: json["username"],
        email: json["email"],
        firstname: json["firstname"],
        phone: json["phone"],
        lastname: json["lastname"],
        id_role: json["id_role"],
        id_user: json["id_user"],
        profesi: json["profesi"],
        profile_picture: json["profile_picture"],
        validasi: json["validasi"],
        pertanyaan: json["pertanyaan"]
    );
  }
}

class UserLoginSuccess {
  bool status;
  String message;
  String token;
  User user;

  UserLoginSuccess({required this.status, required this.message, required this.token, required this.user});

  factory UserLoginSuccess.fromJson(Map<String, dynamic> json){
    return UserLoginSuccess(status: json["status"], message: json["message"], token: json["token"], user: User.fromJson(json["user"]));
  }
}

class UserLoginError {
  bool status;
  String message;

  UserLoginError({required this.status, required this.message});

  factory UserLoginError.fromJson(Map<String, dynamic> json){
    return UserLoginError(status: json["status"], message: json["message"]);
  }
}