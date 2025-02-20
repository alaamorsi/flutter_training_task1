import 'package:flutter_training_task1/core/services/connectivity/network_controller.dart';
import 'package:get/get.dart';


class DependencyInjection {

  static void init() {
    Get.put<NetworkController>(NetworkController(),permanent:true);
  }
}