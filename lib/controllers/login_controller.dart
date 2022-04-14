part of 'controller.dart';

class LoginController extends GetxController {

  void handleGotoForgotPassword(){
    Get.to(() => ForgotPassword());
  }

  final user = UserLoginSuccess(status: false, message: "unknown message", token: "secret value", user: User(username: "username", email: "email", firstname: "firstname", phone: 'phone', lastname: "lastname", id_role: 2, id_user: 1, profesi: "profesi", profile_picture: "png", validasi:"validasi", pertanyaan: "pertanyaan")).obs;
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();

  void handleLogin() async{
    try{
      var response = await UserService.loginUser(username.text, password.text);
      if(response.value.status){
        user.update((_) {
          user.value.user = response.value.user;
        });

        if(user.value.user.id_role == 1){
          Get.to(() => AdminHomeScreen(), transition: Transition.downToUp, duration: const Duration(seconds: 3));
        } else {
          Get.to(() => HomePage(), transition: Transition.downToUp, duration: const Duration(seconds: 3));
        }
        clearInput();
      }else {
        Get.snackbar("Information", "${response.value.message}", backgroundColor: Colors.redAccent, colorText: Colors.white);
      }
      print(user.value.user.username);
    }catch(e){
      print(e);
    }
  }

  void handleToRegister(){
    clearInput();
    Get.to(() => SignUpScreen());
  }

  void clearInput(){
    username.clear();
    password.clear();
  }
}