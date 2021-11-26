import 'package:flutter/material.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/controllers/quiz_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 25,
      decoration: BoxDecoration(
        color: Color(0xFFC4C4C4),
        border: Border.all(color: Colors.white, width: 3),
        borderRadius: BorderRadius.circular(8)
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(),
        builder: (controller) {
          return Stack(
            children: [
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  width: constraints.maxWidth * controller.animation.value,
                  decoration: BoxDecoration(
                    color: Color(0xFF1E9E61),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding / 2
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text(
                      //   "${(controller.animation.value * 15).round()} sec",
                      //   style: Theme.of(context)
                      //       .textTheme
                      //       .headline6
                      //       .copyWith(color: Colors.white),
                      // ),
                      // Icon(Icons.timer, color: Colors.white,)
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}