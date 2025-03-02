import 'dart:convert';
import 'package:flutter_training_task1/core/services/api_services/dio_helper.dart';
import 'package:flutter_training_task1/features/property/data/models/property_model.dart';

abstract class PropertyRepo {
  static Future<PropertyDetailsModel?> fetchPropertyDetails(int id) async {
    try {
      final response = await DioHelper.postData(
        url: 'u_property_details',
        data: {
          "pro_id": id,  // Fixed: Use an integer, not a set
          "uid": 23
        },
      );

      if (response.statusCode == 200) {
        final data = response.data is String
            ? json.decode(response.data)  // Decode only if it's a String
            : response.data;

        if (data is Map<String, dynamic>) {
          return PropertyDetailsModel.fromJson(data);
        } else {
          print('Unexpected data format: $data');
          return null;
        }
      } else {
        print('Failed to load property details: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error fetching property details: $e');
      return null;
    }
  }
}
