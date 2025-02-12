import 'package:dio/dio.dart';
import 'package:flutter_training_task1/core/services/api_services/api_constants.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        receiveDataWhenStatusError: true,
      ),
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic>? data,
    required String token,
  }) async {
    dio.options.headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token',
    };

    return dio.post(
      url,
      data: data!,
    );
  }
}
