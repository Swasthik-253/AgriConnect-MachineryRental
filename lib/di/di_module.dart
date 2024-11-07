import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../utils/constants/api_constants.dart';

@module
abstract class InjectionModule {
  @lazySingleton
  Dio dio() => Dio(
        BaseOptions(
          contentType: Headers.jsonContentType,
          baseUrl: ApiConstants.baseUrl,
          connectTimeout: const Duration(seconds: 10),
          receiveTimeout: const Duration(seconds: 10),
          sendTimeout: const Duration(seconds: 10),
        ),
      );
}
