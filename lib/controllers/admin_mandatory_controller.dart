part of 'controller.dart';

class AdminMandatoryController extends GetxController {

  final categoryMandatory = CategoryMandatory(dataCategory: <DataCategory>[], status: false).obs;

  @override
  void onInit() {
    readCategory();
    super.onInit();
  }

  void readCategory() async {
    try {
      var response = await AdminMandatoryService.readAllCategory();
      if(response.value.status){
        categoryMandatory.update((_) {
          categoryMandatory.value.dataCategory = response.value.dataCategory;
        });
      }
    }catch(e){
      print(e);
    }
  }
}