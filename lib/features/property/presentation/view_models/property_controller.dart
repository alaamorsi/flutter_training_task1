import 'package:flutter_training_task1/features/property/data/models/property_model.dart';
import 'package:flutter_training_task1/features/property/data/repo/property_repo.dart';
import 'package:get/get.dart';

class PropertyController extends GetxController {
  Rxn<PropertyDetailsModel> propertyDetailsModel = Rxn<PropertyDetailsModel>();

  RxBool isLoading = false.obs;

  void fetchProperty(int id) async {
  isLoading.value = true;
  final data = await PropertyRepo.fetchPropertyDetails(id);
  
  if (data != null) {
    propertyDetailsModel.value = data;
  } else {
    print("Failed to fetch property details.");
  }
  
  isLoading.value = false;
}



}
