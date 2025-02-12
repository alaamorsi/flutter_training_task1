import 'package:flutter_training_task1/core/services/api_services/dio_helper.dart';
import 'package:flutter_training_task1/core/services/api_services/api_constants.dart';
import 'package:flutter_training_task1/features/favorite/data/models/fav_model.dart';

abstract class FavRepo {
  static Future<List<FavModel>> getFaveList() async {
    try {
      var response = await DioHelper.postData(
          url: 'u_favlist',
          data: {'uid': 23, 'property_type': 1, 'country_id': 3},
          token: ApiConstants.token);
      if (response.statusCode == 200) {
        List<dynamic> list = response.data['propetylist'];
        return list
            .map((item) => FavModel.fromJson(item as Map<String, dynamic>))
            .toList();
      } else {
        return [];
      }
    } catch (error) {
      print(error.toString());
    }
    return [];
  }
}
