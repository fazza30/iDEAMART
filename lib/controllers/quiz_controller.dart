import 'package:flutter/material.dart';
// import 'package:flutter_auth/Screens/User/Result/result_screen.dart';
import 'package:flutter_auth/models/Questions.dart';
import 'package:get/get.dart';

class QuestionController extends GetxController 
  with SingleGetTickerProviderMixin {
  
  AnimationController _animationController;
  Animation _animation;

  Animation get animation => this._animation;

  PageController _pageController;
  PageController get pageController => this._pageController;

  // List<Question> _questions = sample_data
  //   .map(
  //     (question) => Question(
  //       id: question['id'],
  //       question: question['question'],
  //       options: question['options'],
  //       icons: question['icons'],
  //       answer: question['answer_index']
  //     ),
  //   )
  //   .toList();

  // List<Question> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  int _selectedAns;
  int get selectedAns => this._selectedAns;

  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  @override
  void onInit() {
    _animationController =
        AnimationController(duration: Duration(seconds: 15), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        // update like setState
        update();
      });

    // _animationController.forward().whenComplete(nextQuestion);

    _pageController = PageController();

    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
    _animationController.reset();
    _pageController.dispose();
  }

  void checkAns(Question question, int selectedIndex) {
    _isAnswered = true;
    _selectedAns = selectedIndex;

    // Ketika soal sudah terjawab, progressBar akan terhenti
    _animationController.stop();
    update();

    Future.delayed(Duration(seconds: 2), () {
     nextQuestion();
    });
  }

  void nextQuestion() {
    // if (_questionNumber.value != _questions.length) {
    //   _isAnswered = false;
    //   _pageController.nextPage(
    //     duration: Duration(milliseconds: 250), curve: Curves.ease
    //   );

      // reset ke 0
      _animationController.reset();

      // kembali jalankan progressBar
      // _animationController.forward().whenComplete(nextQuestion);
    // } else {
    //   Get.to(() => ResultScreen());
    //   _animationController.reset();
    // }
  }

  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }
}