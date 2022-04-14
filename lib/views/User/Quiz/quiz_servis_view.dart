part of 'package:flutter_auth/view.dart';

class QuizServisView extends StatelessWidget {
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
                  child: Obx((){
                    return LinearPercentIndicator(
                      width: 370,
                      lineHeight: 18.0,
                      percent: (quizController.indexSeven.value + 1)/quizController.quiz.value.servisdata.length,
                      progressColor: Colors.redAccent,
                    );
                  }),
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
                        child: Obx((){
                          return Container(
                            margin: const EdgeInsets.symmetric(horizontal: 12),
                            child: Text(
                              quizController.quiz.value.servisdata[quizController.indexSeven
                                  .value].question,
                              style: Theme.of(context).textTheme.headline1?.copyWith(
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          );
                          //return Text(quizController.quiz.value.pengelola[quizController.indexOne.value].question);
                        }),
                      ),
                      const SizedBox(height: 50,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              GestureDetector(
                                onTap: (){quizController.handleOptionSangatSetuju();},
                                child: SvgPicture.asset("assets/icons/strongly-agree.svg", width: 45, height: 45),
                              ),
                              const SizedBox(height: 12,),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: (){quizController.handleOptionSetuju();},
                                child: SvgPicture.asset("assets/icons/agree.svg", width: 45, height: 45),
                              ),
                              const SizedBox(height: 12,),

                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: (){quizController.handleOptionTidakSetuju();},
                                child: SvgPicture.asset("assets/icons/disagree.svg", width: 45, height: 45),
                              ),
                              const SizedBox(height: 12,),
                            ],
                          ),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: (){quizController.handleOptionSangatTidakSetuju();},
                                child: SvgPicture.asset("assets/icons/strongly-disagree.svg", width: 45, height: 45),
                              ),
                              const SizedBox(height: 12,),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){quizController.handlePostSurveySeven(quizController.quiz.value.servisdata[quizController.indexSeven.value].id_question);},
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