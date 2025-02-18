import 'package:flutter_training_task1/features/services/data/models/services_model.dart';
import 'package:flutter_training_task1/features/services/data/repo/services_repo.dart';
import 'package:get/get.dart';

class ServicesController extends GetxController {
  RxBool service1 = false.obs;
  RxBool service2 = false.obs;
  RxBool service3 = false.obs;
  RxString comment = ''.obs;
  RxList<ServicesModel> servicesRequestsList = <ServicesModel>[].obs;
  RxBool isLoading1 = false.obs;
  RxBool isLoading2 = false.obs;

  void fetchServicesRequests() async {
    isLoading1.value = true;
    servicesRequestsList.value = await ServicesRepo.getServicesReauestList();
    isLoading1.value = false;
  }

  void sendServicesRequests() async {
    List<int> ids = [];
    if (service1.value) {
      ids.add(1);
    }
    if (service2.value) {
      ids.add(2);
    }
    if (service3.value) {
      ids.add(3);
    }
    isLoading2.value = true;
    await ServicesRepo.addServicesReauest(ids, comment.value);
    isLoading2.value = false;
    fetchServicesRequests();
  }

  @override
  void onInit() {
    fetchServicesRequests();
    super.onInit();
  }
}
