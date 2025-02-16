import 'package:flutter_training_task1/core/services/api_services/dio_helper.dart';
import 'package:flutter_training_task1/features/ticket/data/models/tickets_model.dart';

class TicketsRepo {
  static Future<List<TicketsModel>> getTickets() async {
    try {
      var response = await DioHelper.getData(url: 'tickets');
      if (response.statusCode == 200) {
        List<dynamic> list = response.data['data'];
        return list
            .map((item) => TicketsModel.fromJson(item as Map<String, dynamic>))
            .toList();
      }
    } catch (error) {
      print(error);
    }
    return [];
  }
}
