part of 'controller.dart';

class HomeController extends GetxController {

  void handleGotoLogout(){
    Get.to(() => WelcomeScreen());
  }
  void handleGotoBatal(){
    Get.back();
  }
  void handleGotoQuizPengelola(){
    Get.to(() => QuizPengelolaView());
  }
  void handleGotoQuizMedsos() {
    Get.to(() => QuizMedsosView());
  }

  void handleGotoQuizOrganisasi() {
    Get.to(() => QuizOrganisasiView());
  }

  void handleGotoQuizAdministrasi() {
    Get.to(() => QuizAdministrasiView());
  }
  void handleGotoQuizEvent() {
    Get.to(() => QuizEventView());
  }
  void handleGotoQuizPengembangan() {
    Get.to(() => QuizPengembanganView());
  }

  void handleGotoQuizServis() {
    Get.to(() => QuizServisView());
  }

  void handleGotoQuizMedia() {
    Get.to(() => QuizMediaView());
  }

  /*void handleGotoQuizResult(){
    Get.to(() => ResultSurveyView());
  }*/

}

class QuizController extends GetxController {
  final LoginController loginController = Get.put(LoginController());
  final quiz = QuizSuccess(
      status: false,
      pengelola: [Pengelola(id_category: 1, id_question: 2, question: "question")],
      medsos: [Medsos(id_category: 1, id_question: 2, question: "question")],
      organisasi: [Organisasi(id_category: 1, id_question: 2, question: "question")],
      administrasi: [Administarasi(id_category: 1, id_question: 2, question: "question")],
      event: [Event(id_category: 1, id_question: 1, question: "question")],
      pengembangan: [Pengembangan(id_category: 1, id_question: 2, question: "question")],
      servisdata: [Servis(id_category: 2, id_question: 2, question: "question")],
      mediapartner: [Partner(id_category: 2, id_question: 2, question: "question")]
  ).obs;

  final indexOne = 0.obs;
  final indexTwo = 0.obs;
  final indexThree = 0.obs;
  final indexFour = 0.obs;
  final indexFive = 0.obs;
  final indexSix = 0.obs;
  final indexSeven = 0.obs;
  final indexEight = 0.obs;

  final idOption = 1.obs;

  final TextEditingController feedbackPengelola = TextEditingController();
  final TextEditingController feedbackMedsos = TextEditingController();
  final TextEditingController feedbackOrganisasi = TextEditingController();
  final TextEditingController feedbackAdministrasi = TextEditingController();
  final TextEditingController feedbackEvent = TextEditingController();
  final TextEditingController feedbackPengembangan = TextEditingController();
  final TextEditingController feedbackServisdata = TextEditingController();
  final TextEditingController feedbackMediapartner = TextEditingController();

  void handleOptionSangatSetuju(){
    idOption.value = 1;
    Get.snackbar("Information", "Anda Memilih Sangat Setuju");
  }

  void handleOptionSetuju(){
    idOption.value = 2;
    Get.snackbar("Information", "Anda Memilih Setuju");
  }

  void handleOptionTidakSetuju(){
    idOption.value = 3;
    Get.snackbar("Information", "Anda Memilih Tidak Setuju");
  }

  void handleOptionSangatTidakSetuju(){
    idOption.value = 4;
    Get.snackbar("Information", "Anda Memilih Sangat Tidak Setuju");
  }
  void handlePostSurveyOne(int idQuestion) async {
    try {
      var response = await QuizService.createSurveyOne(
          loginController.user.value.user.id_user, idQuestion, idOption.value);
      print(response.value.message);
      if (response.value.status) {
        handleNext1();
      }
    } catch (e) {
      print(e);
    }
  }

  void handlePostSurveyTwo(int idQuestion) async {
    try {
      var response = await QuizService.createSurveyTwo(
          loginController.user.value.user.id_user, idQuestion, idOption.value);
      print(response.value.message);
      if (response.value.status) {
        handleNext2();
      }
    } catch (e) {
      print(e);
    }
  }

  void handlePostSurveyThree(int idQuestion) async {
    try {
      var response = await QuizService.createSurveyThree(
          loginController.user.value.user.id_user, idQuestion, idOption.value);
      print(response.value.message);
      if (response.value.status) {
        handleNext3();
      }
    } catch (e) {
      print(e);
    }
  }

  void handlePostSurveyFour(int idQuestion) async {
    try {
      var response = await QuizService.createSurveyFour(
          loginController.user.value.user.id_user, idQuestion, idOption.value);
      print(response.value.message);
      if (response.value.status) {
        handleNext4();
      }
    } catch (e) {
      print(e);
    }
  }

  void handlePostSurveyFive(int idQuestion) async {
    try {
      var response = await QuizService.createSurveyFive(
          loginController.user.value.user.id_user, idQuestion, idOption.value);
      print(response.value.message);
      if (response.value.status) {
        handleNext5();
      }
    } catch (e) {
      print(e);
    }
  }

  void handlePostSurveySix(int idQuestion) async {
    try {
      var response = await QuizService.createSurveySix(
          loginController.user.value.user.id_user, idQuestion, idOption.value);
      print(response.value.message);
      if (response.value.status) {
        handleNext6();
      }
    } catch (e) {
      print(e);
    }
  }

  void handlePostSurveySeven(int idQuestion) async {
    try {
      var response = await QuizService.createSurveySeven(
          loginController.user.value.user.id_user, idQuestion, idOption.value);
      print(response.value.message);
      if (response.value.status) {
        handleNext7();
      }
    } catch (e) {
      print(e);
    }
  }

  void handlePostSurveyEight(int idQuestion) async {
    try {
      var response = await QuizService.createSurveyEight(
          loginController.user.value.user.id_user, idQuestion, idOption.value);
      print(response.value.message);
      if (response.value.status) {
        handleNext8();
      }
    } catch (e) {
      print(e);
    }
  }

  void handleNext1() {
    if (indexOne.value < quiz.value.pengelola.length - 1) {
      indexOne.value = indexOne.value + 1;
    } else {
      Get.to(() => QuizPengelolaFeedbackView());
    }
    print(indexOne.value);
  }

  void handleNext2() {
    if (indexTwo.value < quiz.value.medsos.length - 1) {
      indexTwo.value = indexTwo.value + 1;
    } else {
      Get.to(() => QuizMedsosFeedbackView());
    }
    print(indexTwo.value);
  }

  void handleNext3() {
    if (indexThree.value < quiz.value.organisasi.length - 1) {
      indexThree.value = indexThree.value + 1;
    } else {
      Get.to(() => QuizOrganisasiFeedbackView());
    }
    print(indexThree.value);
  }

  void handleNext4() {
    if (indexFour.value < quiz.value.administrasi.length - 1) {
      indexFour.value = indexFour.value + 1;
    } else {
      Get.to(() => QuizAdministrasiFeedbackView());
    }
    print(indexFour.value);
  }

  void handleNext5() {
    if (indexFive.value < quiz.value.event.length - 1) {
      indexFive.value = indexFive.value + 1;
    } else {
      Get.to(() => QuizEventFeedbackView());
    }
    print(indexFive.value);
  }

  void handleNext6() {
    if (indexSix.value < quiz.value.pengembangan.length - 1) {
      indexSix.value = indexSix.value + 1;
    } else {
      Get.to(() => QuizPengembanganFeedbackView());
    }
    print(indexSix.value);
  }

  void handleNext7() {
    if (indexSeven.value < quiz.value.servisdata.length - 1) {
      indexSeven.value = indexSeven.value + 1;
    } else {
      Get.to(() => QuizServisFeedbackView());
    }
    print(indexSeven.value);
  }

  void handleNext8() {
    if (indexEight.value < quiz.value.mediapartner.length - 1) {
      indexEight.value = indexEight.value + 1;
    } else {
      Get.to(() => QuizMediaFeedbackView());
    }
    print(indexEight.value);
  }


  void handlePostFeedback1() async {
    try {
      var response = await QuizService.createFeedback(
          loginController.user.value.user.id_user,
          quiz.value.pengelola[0].id_category,
          feedbackPengelola.text);
      if (response.value.status) {
        Get.snackbar("Information", "Terimakasih Feedback yang Anda Berikan");
        Get.to(() => FinishSurveyView());
      }
    } catch (e) {
      print(e);
    }
  }

  void handlePostFeedback2() async {
    try {
      var response = await QuizService.createFeedback(
          loginController.user.value.user.id_user,
          quiz.value.medsos[0].id_category,
          feedbackMedsos.text);
      if (response.value.status) {
        Get.snackbar("Information", "Terimakasih Feedback yang Anda Berikan");
        Get.to(() => FinishSurveyView());
      }
    } catch (e) {
      print(e);
    }
  }

  void handlePostFeedback3() async {
    try {
      var response = await QuizService.createFeedback(
          loginController.user.value.user.id_user,
          quiz.value.organisasi[0].id_category,
          feedbackOrganisasi.text);
      if (response.value.status) {
        Get.snackbar("Information", "Terimakasih Feedback yang Anda Berikan");
        Get.to(() => FinishSurveyView());
      }
    } catch (e) {
      print(e);
    }
  }

  void handlePostFeedback4() async {
    try {
      var response = await QuizService.createFeedback(
          loginController.user.value.user.id_user,
          quiz.value.administrasi[0].id_category,
          feedbackAdministrasi.text);
      if (response.value.status) {
        Get.snackbar("Information", "Terimakasih Feedback yang Anda Berikan");
        Get.to(() => FinishSurveyView());
      }
    } catch (e) {
      print(e);
    }
  }

  void handlePostFeedback5() async {
    try {
      var response = await QuizService.createFeedback(
          loginController.user.value.user.id_user,
          quiz.value.event[0].id_category,
          feedbackEvent.text);
      if (response.value.status) {
        Get.snackbar("Information", "Terimakasih Feedback yang Anda Berikan");
        Get.to(() => FinishSurveyView());
      }
    } catch (e) {
      print(e);
    }
  }
  void handlePostFeedback6() async {
    try {
      var response = await QuizService.createFeedback(
          loginController.user.value.user.id_user,
          quiz.value.pengembangan[0].id_category,
          feedbackPengembangan.text);
      if (response.value.status) {
        Get.snackbar("Information", "Terimakasih Feedback yang Anda Berikan");
        Get.to(() => FinishSurveyView());
      }
    } catch (e) {
      print(e);
    }
  }

  void handlePostFeedback7() async {
    try {
      var response = await QuizService.createFeedback(
          loginController.user.value.user.id_user,
          quiz.value.servisdata[0].id_category,
          feedbackServisdata.text);
      if (response.value.status) {

        Get.snackbar("Information", "Terimakasih Feedback yang Anda Berikan");
        Get.to(() => FinishSurveyView());
      }
    } catch (e) {
      print(e);
    }
  }

  void handlePostFeedback8() async {
    try {
      var response = await QuizService.createFeedback(
          loginController.user.value.user.id_user,
          quiz.value.mediapartner[0].id_category,
          feedbackMediapartner.text);
      if (response.value.status) {
        Get.snackbar("Information", "Terimakasih Feedback yang Anda Berikan");
        Get.to(() => FinishSurveyView());
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  onInit(){
    readQuiz();
    super.onInit();
  }
  void readQuiz() async {
    try {
      var response = await QuizService.readAllQuestion();
      if(response.value.status){
        quiz.update((_) {
          quiz.value.pengelola = response.value.pengelola;
          quiz.value.medsos = response.value.medsos;
          quiz.value.organisasi = response.value.organisasi;
          quiz.value.event = response.value.event;
          quiz.value.administrasi = response.value.administrasi;
          quiz.value.pengembangan = response.value.pengembangan;
          quiz.value.servisdata = response.value.servisdata;
          quiz.value.mediapartner = response.value.mediapartner;
        });
      }
    }catch(e){
      print(e);
    }
  }
}