part of 'controller.dart';

class ForgetPasswordController extends GetxController {
  final user = UserUpdatePasswordSuccess(status: true, message: "unknown message").obs;

  var txtPasswordVisibility = true.obs;

  final LoginController loginController = Get.put(LoginController());
  final TextEditingController username = TextEditingController();
  final TextEditingController password= TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();

  void handleForgetPassword()async {
    try {
      var response = await UserService.updatePasswordUser(
          username.text, password.text, confirmpassword.text);
      print(response.value.status);
      if (response.value.status) {
        user.update((_) {
          user.value = response.value;
        });
        Get.snackbar("Information", "${response.value.message}",
            backgroundColor: Colors.blueAccent);
        Get.to(() => LoginScreen());
        clearInput();
      } else {
        Get.snackbar("Information", "${response.value.message}",
            backgroundColor: Colors.redAccent);
      }
    } catch (e) {
      print(e);
    }
  }

    void clearInput(){
      username.clear();
      password.clear();
      confirmpassword.clear();
    }
  }

