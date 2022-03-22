const String url_test = "http://10.0.2.2:3000/users/authenticate";
const String login_rest = "http://10.0.2.2:4000/users/authenticate";
const String get_profile_byusername = "http://10.0.2.2:4000/users/username/";

class MyUrl {
  // String urlDevice = "http://192.168.0.104/school-management/";
  String urlDevice = "https://10.0.2.2:8080/school-management/";

  String getUrlDevice(){
    return this.urlDevice;
  }
}