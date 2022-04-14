part of 'service.dart';

class AdminMandatoryService {

  static Future<ApiReturnValue> readAllCategory() async {
    var response = await http.get(Uri.parse(Endpoint.readCategoryMandatory));
    switch(response.statusCode){
      case 200 :
        return ApiReturnValue(value: CategoryMandatory.fromJson(jsonDecode(response.body)));
      default:
        throw Exception('Failed to create album.');
    }
  }
}