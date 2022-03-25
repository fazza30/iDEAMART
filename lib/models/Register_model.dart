class CreateUser {
  String status;
  String msg;

  CreateUser({this.status, this.msg});

  factory CreateUser.fromJson(Map<String, dynamic> json) {
    return CreateUser(status: json["status"], msg: json["msg"]);
  }
}
