part of 'package:flutter_auth/view.dart';

class RoundedButton extends StatelessWidget {
  final WelcomeController welcomeController = Get.put(WelcomeController());
  final String text;
  final VoidCallback? press;
  final Color color, textColor;
  RoundedButton({
    Key? key,
    required this.text,
    this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      onPressed: () {
        welcomeController.handleToLogin();
        press!();
      },
      style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
          textStyle: TextStyle(
              color: textColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins")),
    );
  }
}
