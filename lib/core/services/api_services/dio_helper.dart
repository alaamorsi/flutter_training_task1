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
            'Authorization': 'Bearer F7OWr90oQmGdtIY2xKWCk8xJhDjhW5qu7InuLzma83b9464d',
          }),
    );
  }

  static Future<Response> postData({
    required String url,
    required Map<String, dynamic>? data,
  }) async {
    return dio.post(
      url,
      data: data,
    );
  }
  static Future<Response> getData({
    required String url,
  }) async {
    return dio.get(
      url,
    );
  }
}
