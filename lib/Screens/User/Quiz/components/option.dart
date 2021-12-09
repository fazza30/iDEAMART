import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/controllers/quiz_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Option extends StatelessWidget {
  const Option({
    Key key, this.text, this.index, this.press, this.icon,
  }) : super(key: key);

  final String text;
  final String icon;
  final int index;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(),
      builder: (qnController) {
        Color getColor() {
          if (qnController.isAnswered) {
            return kBlackColor;
          }
          return kGrayColor;
        }

        return InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: kDefaultPadding),
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              border: Border.all(color: getColor()),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  " $text",
                  style: TextStyle(
                    color: getColor(),
                    fontSize: 16,
                    fontFamily: "SourceSansPro"
                  ),
                ),
                SvgPicture.asset("$icon", width: 25, height: 25),
              ],
            ),
          ),
        );
      }
    );
  }
}