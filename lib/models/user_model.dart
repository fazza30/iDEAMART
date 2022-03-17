class CreateUser {
  String msg;
  ResponseCreateUser responseCreateUser;

  CreateUser({this.msg, this.responseCreateUser});

  factory CreateUser.fromJson(Map<String, dynamic> json) {
    return CreateUser(
        msg: json["msg"],
        responseCreateUser: ResponseCreateUser.fromJson(json["user"]));
  }
}

class ResponseCreateUser {
  String id;
  String first_name;
  String last_name;
  String username;
  String password;
  String login_type;

  ResponseCreateUser(
      {this.id,
      this.first_name,
      this.last_name,
      this.username,
      this.password,
      this.login_type});

  factory ResponseCreateUser.fromJson(Map<String, dynamic> json) {
    return ResponseCreateUser(
        id: json["id"],
        first_name: json["first_name"],
        last_name: json["last_name"],
        username: json["username"],
        password: json["password"],
        login_type: json["login_type"]);
  }
}

class ResponseSuccessLogin {
  String token;
  ResponseDataUser responseDataUser;
  ResponseSuccessLogin({this.token, this.responseDataUser});

  factory ResponseSuccessLogin.fromJson(Map<String, dynamic> parsedJson) {
    return ResponseSuccessLogin(
        token: parsedJson['token'],
        responseDataUser: ResponseDataUser.fromJson(parsedJson['user']));
  }
}

class ResponseDataUser {
  String id;
  String username;
  String email;

  ResponseDataUser({this.id, this.username, this.email});

  factory ResponseDataUser.fromJson(Map<String, dynamic> json) {
    return ResponseDataUser(
        id: json["_id"], username: json["name"], email: json["email"]);
  }
}

class ResponseSuccessError {
  String msg;
  ResponseSuccessError({this.msg});

  factory ResponseSuccessError.fromJson(Map<String, dynamic> parsedJson) {
    return ResponseSuccessError(
      msg: parsedJson['msg'],
    );
  }
}
