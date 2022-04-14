part of 'service.dart';

class QuizService {

  static Future<ApiReturnValue> readAllQuestion() async {
    var response = await http.get(Uri.parse(Endpoint.readAllQuestion));
    switch(response.statusCode){
      case 200 :
        return ApiReturnValue(value: QuizSuccess.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

  static Future<ApiReturnValue> createSurveyOne(int idUser, int idQuestion, int idResult) async {
    final response = await http.post(
        Uri.parse(Endpoint.postSurveyOne),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, int>{
          "idUser" : idUser,
          "idQuestion" : idQuestion,
          "idResult" : idResult
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: SurveyPostResponseOne.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

  static Future<ApiReturnValue> createSurveyTwo(int idUser, int idQuestion, int idResult) async {
    final response = await http.post(
        Uri.parse(Endpoint.postSurveyTwo),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, int>{
          "idUser" : idUser,
          "idQuestion" : idQuestion,
          "idResult" : idResult
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: SurveyPostResponseTwo.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

  static Future<ApiReturnValue> createSurveyThree(int idUser, int idQuestion, int idResult) async {
    final response = await http.post(
        Uri.parse(Endpoint.postSurveyThree),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, int>{
          "idUser" : idUser,
          "idQuestion" : idQuestion,
          "idResult" : idResult
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: SurveyPostResponseThree.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

  static Future<ApiReturnValue> createSurveyFour(int idUser, int idQuestion, int idResult) async {
    final response = await http.post(
        Uri.parse(Endpoint.postSurveyFour),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, int>{
          "idUser" : idUser,
          "idQuestion" : idQuestion,
          "idResult" : idResult
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: SurveyPostResponseFour.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

  static Future<ApiReturnValue> createSurveyFive(int idUser, int idQuestion, int idResult) async {
    final response = await http.post(
        Uri.parse(Endpoint.postSurveyFive),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, int>{
          "idUser" : idUser,
          "idQuestion" : idQuestion,
          "idResult" : idResult
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: SurveyPostResponseFive.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

  static Future<ApiReturnValue> createSurveySix(int idUser, int idQuestion, int idResult) async {
    final response = await http.post(
        Uri.parse(Endpoint.postSurveySix),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, int>{
          "idUser" : idUser,
          "idQuestion" : idQuestion,
          "idResult" : idResult
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: SurveyPostResponseSix.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

  static Future<ApiReturnValue> createSurveySeven(int idUser, int idQuestion, int idResult) async {
    final response = await http.post(
        Uri.parse(Endpoint.postSurveySeven),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, int>{
          "idUser" : idUser,
          "idQuestion" : idQuestion,
          "idResult" : idResult
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: SurveyPostResponseSeven.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }

  static Future<ApiReturnValue> createSurveyEight(int idUser, int idQuestion, int idResult) async {
    final response = await http.post(
        Uri.parse(Endpoint.postSurveyEight),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body: jsonEncode(<String, int>{
          "idUser" : idUser,
          "idQuestion" : idQuestion,
          "idResult" : idResult
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: SurveyPostResponseEight.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }


  static Future<ApiReturnValue> createFeedback(int idUser, int idCategory, String feedback) async {
    final response = await http.post(
        Uri.parse(Endpoint.postFeedback),
        headers: <String, String> {
          "Content-Type": "application/json; charset=UTF-8",
        },
        body:jsonEncode(<String, dynamic>{
          "idUser" : idUser,
          "idCategory" : idCategory,
          "feedback" : feedback
        })
    );

    switch(response.statusCode){
      case 200:
        return ApiReturnValue(value: FeedbackPostResponse.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create albfaaum.');
    }
  }
}