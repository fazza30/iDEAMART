/*class CreateUser {
  String msg;
  ResponseCreateUser responseCreateUser;

  CreateUser({this.msg, this.responseCreateUser});

  factory CreateUser.fromJson(Map<String, dynamic> json) {
    return CreateUser(
        msg: json["msg"],
        responseCreateUser: ResponseCreateUser.fromJson(json["user"]));
  }
}*/

class CreateUser {
  String id;
  String firstname;
  String lastname;
  String phone;
  String password;

  CreateUser(
      {this.id, this.firstname, this.lastname, this.phone, this.password});

  factory CreateUser.fromJson(Map<String, dynamic> json) {
    return CreateUser(
        id: json["id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        phone: json["phone"],
        password: json["password"]);
  }
}

class LoginUser {
  String msg;
  ResponseLoginUser responseLoginUser;

  LoginUser({this.msg, this.responseLoginUser});

  factory LoginUser.fromJson(Map<String, dynamic> json) {
    return LoginUser(
        msg: json["msg"],
        responseLoginUser: ResponseLoginUser.fromJson(json["user"]));
  }
}

class ReadUser {
  List<ListUser> listUser;

  ReadUser({this.listUser});

  factory ReadUser.fromJson(Map<String, dynamic> json) {
    var list = json["ListUser"] as List;
    List<ListUser> listUser_ = list.map((e) => ListUser.fromJson(e)).toList();
    return ReadUser(
      listUser: listUser_,
    );
  }
}

/*
class AfterLogin {
  List<ListLogin> listLogin;
  AfterLogin({required this.listLogin});
}
*/

class ListUser {
  String id;
  String firstname;
  String lastname;
  String phone;
  String email;
  String username;
  String password;

  ListUser(
      {this.id,
      this.firstname,
      this.lastname,
      this.phone,
      this.email,
      this.username,
      this.password});

  factory ListUser.fromJson(Map<String, dynamic> json) {
    return ListUser(
        id: json["_id"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        phone: json["phone"],
        email: json["email"],
        username: json["username"],
        password: json["password"]);
  }
}

class ResponseLoginUser {
  String id;
  String phone;
  String password;
  ResponseLoginUser({this.id, this.phone, this.password});

  factory ResponseLoginUser.fromJson(Map<String, dynamic> json) {
    return ResponseLoginUser(
        id: json["id"], phone: json["phone"], password: json["password"]);
  }
}
