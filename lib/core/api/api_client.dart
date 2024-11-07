import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ApiClient {
  final Dio _dio;

  ApiClient(this._dio);

  dynamic get(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      return response.data;
    } on Exception {
      rethrow;
    }
  }

  dynamic post(String path,
      {Map<String, dynamic>? queryParameters,
      required Map<String, dynamic>? params}) async {
    try {
      final response =
          await _dio.post(path, queryParameters: queryParameters, data: params);
      return response.data;
    } on Exception {
      rethrow;
    }
  }
}
