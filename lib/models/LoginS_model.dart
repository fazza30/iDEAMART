class ResponseSuccessLogin {
  String msg;
  ResponseDataUser responseDataUser;
  String login_type;
  String token;
  ResponseSuccessLogin(
      {this.msg, this.responseDataUser, this.token, this.login_type});

  factory ResponseSuccessLogin.fromJson(Map<String, dynamic> parsedJson) {
    return ResponseSuccessLogin(
        msg: parsedJson["msg"],
        responseDataUser: ResponseDataUser.fromJson(parsedJson['user']),
        login_type: parsedJson["login_type"],
        token: parsedJson['token']);
  }
}

class ResponseDataUser {
  String id;
  String first_name;
  String last_name;
  String username;

  ResponseDataUser({this.id, this.first_name, this.last_name, this.username});

  factory ResponseDataUser.fromJson(Map<String, dynamic> json) {
    return ResponseDataUser(
        id: json["id"],
        first_name: json["first_name"],
        last_name: json["last_name"],
        username: json["username"]);
  }
}

/*class ResponseSuccessError {
  String msg;
  ResponseSuccessError({this.msg});

  factory ResponseSuccessError.fromJson(Map<String, dynamic> parsedJson) {
    return ResponseSuccessError(
      msg: parsedJson['msg'],

  }
  }*/

