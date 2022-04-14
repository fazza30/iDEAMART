part of 'model.dart';

class CategoryMandatory {
  bool status;
  List<DataCategory> dataCategory;

  CategoryMandatory({required this.dataCategory, required this.status});

  factory CategoryMandatory.fromJson(Map<String, dynamic> json){
    var listCategory = json['data'] as List;
    List<DataCategory> categoryList = listCategory.map((i) => DataCategory.fromJson(i)).toList();
    return CategoryMandatory(dataCategory: categoryList, status: json["status"]);
  }
}

class DataCategory {
  int idCategory;
  String category;
  String keterangan;

  DataCategory({required this.idCategory, required this.category, required this.keterangan});

  factory DataCategory.fromJson(Map<String, dynamic> json){
    return DataCategory(idCategory: json["id_category"], category: json["category"], keterangan: json["keterangan"]);
  }
}