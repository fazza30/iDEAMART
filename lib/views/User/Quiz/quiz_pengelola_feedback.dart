part of 'package:flutter_auth/view.dart';

class QuizPengelolaFeedbackView extends StatelessWidget {
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
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF239BD8),
                Color(0xFF167CAF),
                Color(0xFF004466)
              ],
              stops: [
                0.1,
                
              ]
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsetsDirectional.fromSTEB(20, 20, 0, 0),
                child: LinearPercentIndicator(
                    width: 350,
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
                            "IdeKu untuk Pengelola",
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
                        border: Border.all(color: Colors.transparent)
                      ),
                      child: TextField(
                        controller: quizController.feedbackPengelola,
                          decoration: InputDecoration(
                            hintText: 'Tuliskan idemu',
                            hintStyle: Theme.of(context).textTheme.bodyText1?.copyWith(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                      )
                    )
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                width: double.infinity,
                child: ElevatedButton(
                  child: Text(
                    "LANJUT",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    quizController.handlePostFeedback1();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xFF239BD8),
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins")),
                )
              )
            ],
          ),
        ),
      )
    );
  }
}