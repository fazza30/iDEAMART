part of 'package:flutter_auth/view.dart';

class QuizEventFeedbackView extends StatelessWidget {
  final QuizController quizController = Get.put(QuizController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _body(context)
    );
  }
  Widget _body(BuildContext context){
    return SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0),
              color: Colors.blue
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 12, right: 12, left: 12),
                    child: LinearPercentIndicator(
                      width: 370,
                      lineHeight: 18.0,
                      percent: 1.0,
                      progressColor: Colors.redAccent,
                    )
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              "Sebutkan ide yang kamu meliki",
                              style: Theme.of(context).textTheme.headline1?.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          )
                      ),
                      const SizedBox(height: 50,),
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 12),
                          height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(color: Colors.black)
                          ),
                          child: TextField(
                            controller: quizController.feedbackEvent,
                            decoration: const InputDecoration(
                                border: InputBorder.none
                            ),
                            maxLines: null,
                            keyboardType: TextInputType.multiline,
                          )
                      )
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){quizController.handlePostFeedback5();},
                    child: Text('Lanjut'),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }

}