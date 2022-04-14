part of 'model.dart';

class ResultSurveyOneModel {
  bool status;
  int totalResult;
  int sangatSetuju;
  int setuju;
  int tidakSetuju;
  int sangatTidakSetuju;

  ResultSurveyOneModel({required this.status, required this.sangatSetuju, required this.sangatTidakSetuju, required this.setuju, required this.tidakSetuju, required this.totalResult});

  factory ResultSurveyOneModel.fromJson(Map<String, dynamic> json){
    return ResultSurveyOneModel(
        status: json["status"],
        sangatSetuju: json["sangat_setuju"],
        sangatTidakSetuju: json["sangat_tidak_setuju"],
        setuju: json["setuju"],
        tidakSetuju: json["tidak_setuju"],
        totalResult: json["totalResult"]
    );
  }
}