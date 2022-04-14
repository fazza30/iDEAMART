part of 'controller.dart';

class ResultSurveyController extends GetxController {

  final resultSurveyOneModel = ResultSurveyOneModel(status: false, sangatSetuju: 1, sangatTidakSetuju: 1, setuju: 1, tidakSetuju: 1, totalResult: 1).obs;




  @override
  void onInit() {
    handleResultSurveyQone();
    super.onInit();
  }

  void handleResultSurveyQone() async {
    try {
      //print(resultSurveyOneModel.totalResult.toString() + "sebelum");
      var response = await ResultSurveyService.readResultSurveyServiceQone();
      if(response.status){
        resultSurveyOneModel.value.totalResult = response.totalResult;
        resultSurveyOneModel.value.tidakSetuju = response.tidakSetuju;
        resultSurveyOneModel.value.setuju = response.setuju;
        resultSurveyOneModel.value.sangatTidakSetuju = response.sangatTidakSetuju;
        resultSurveyOneModel.value.sangatSetuju = response.sangatSetuju;

       }
    }catch(e){
      print(e);
    }
  }
}