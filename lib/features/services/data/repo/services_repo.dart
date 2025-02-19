import 'package:flutter_training_task1/core/services/api_services/dio_helper.dart';
import 'package:flutter_training_task1/features/services/data/models/services_model.dart';

abstract class ServicesRepo {
  static Future<List<ServicesModel>> getServicesReauestList() async {
    try {
      var response = await DioHelper.getData(
        url: 'service-requests',
      );
      if (response.statusCode == 200) {
        List<dynamic> list = response.data['data'];
        return list
            .map((item) => ServicesModel.fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        return [];
      }
    } catch (error) {
      print(error.toString());
    }
    return [];
  }

  static Future<bool> addServicesReauest(
      List<int> idList, String? comment) async {
    try {
      var response = await DioHelper.postData(
        url: 'service-requests',
        data: {
          'service_ids': idList,
          'comment': comment,
        },
      );
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      print(error.toString());
    }
    return false;
  }
}
