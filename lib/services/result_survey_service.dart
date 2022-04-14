part of 'service.dart';

class ResultSurveyService {

  static Future<ResultSurveyOneModel> readResultSurveyServiceQone() async {
    var response = await http.get(Uri.parse(Endpoint.resultSurveyQone));
    switch(response.statusCode){
      case 200 :
        return ResultSurveyOneModel.fromJson(jsonDecode(response.body));
      default:
        throw Exception('Failed to create album.');
    }
  }
}

void main() async{
  var response = await ResultSurveyService.readResultSurveyServiceQone();
  print(response);
}