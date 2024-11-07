import 'package:agri_connect/core/api/api_call_with_error.dart';
import 'package:agri_connect/core/api/api_client.dart';
import 'package:agri_connect/data/models/user.dart';
import 'package:agri_connect/domain/entites/app_error.dart';
import 'package:agri_connect/utils/constants/api_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AuthRepository {
  final ApiClient _apiClient;

  AuthRepository(this._apiClient);

  Future<Either<AppError, void>> register(Map<String, dynamic> params) {
    return ApiCallWithError.call(
        () => _apiClient.post(ApiConstants.register, params: params));
  }

  Future<Either<AppError, User>> login(Map<String, dynamic> params) {
    return ApiCallWithError.call(() async {
      final res = await _apiClient.post(ApiConstants.login, params: params);
      print(res);
      return UserMapper.fromMap(res);
    });
  }

  Future<Either<AppError, void>> changePassword(Map<String, dynamic> params) {
    return ApiCallWithError.call(
        () => _apiClient.post(ApiConstants.changePassword, params: params));
  }
}
