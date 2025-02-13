import 'package:dio/dio.dart';
import 'package:flutter_training_task1/core/services/api_services/api_constants.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: ApiConstants.baseUrl,
          receiveDataWhenStatusError: true,
          headers: {
            'Content-Type': 'application/json',
            'Authorization': 'Bearer 5b1uDCgm63ddrhMIsDgEnEjuukVDnaBySAxwunluf8307c0a',
          }),
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic>? data,
  }) async {
    return dio.post(
      url,
      data: data!,
    );
  }
}
