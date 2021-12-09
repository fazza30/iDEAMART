import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/User/Quiz/components/option.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/controllers/quiz_controller.dart';
import 'package:flutter_auth/models/Questions.dart';
import 'package:get/get.dart';

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    Key key, this.question,
  }) : super(key: key);

  final Question question;

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25)
      ),
      child: Column(
        children: [
          Text(
            question.question,
            style: Theme.of(context)
                .textTheme
                .headline6
                .copyWith(color: kBlackColor, fontFamily: "SourceSansPro"),
          ),
          SizedBox(height: kDefaultPadding / 2,),
          // ignore: sdk_version_ui_as_code
          ...List.generate(
            question.options.length, (index) => Option(
              index: index,
              text: question.options[index],
              icon: question.icons[index],
              press: () => _controller.checkAns(question, index),
            )
          )
        ],
      ),
    );
  }
}