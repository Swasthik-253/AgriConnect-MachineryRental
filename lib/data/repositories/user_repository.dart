import 'package:agri_connect/core/api/api_call_with_error.dart';
import 'package:agri_connect/core/api/api_client.dart';
import 'package:agri_connect/data/models/customer_order.dart';
import 'package:agri_connect/data/models/notification_model.dart';
import 'package:agri_connect/domain/entites/app_error.dart';
import 'package:agri_connect/utils/constants/api_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class UserRepository {
  final ApiClient _client;

  UserRepository(this._client);

  Future<Either<AppError, List<CustomerOrder>>> getOrders(
      Map<String, dynamic> params) async {
    return ApiCallWithError.call(() async {
      final res = await _client.post(ApiConstants.getOrders, params: params);
      print(res);
      return (res as List).map((e) => CustomerOrderMapper.fromMap(e)).toList();
    });
  }

  Future<Either<AppError, List<NotificationModel>>> getNotifications(
      Map<String, dynamic> params) async {
    return ApiCallWithError.call(() async {
      final res = await _client.post(
        ApiConstants.getNotifications,
        params: params,
      );
      print(res);
      try {
        return (res as List)
            .map((e) => NotificationModelMapper.fromMap(e))
            .toList();
      } catch (e) {
        print(e);
      }
      return [];
    });
  }

  Future<Either<AppError, void>> processNotification(
      Map<String, dynamic> params) async {
    return ApiCallWithError.call(() async {
      await _client.post(ApiConstants.processNotification, params: params);
    });
  }

  Future<Either<AppError, CustomerOrder>> orderMachine(
      Map<String, dynamic> params) async {
    return ApiCallWithError.call(() async {
      final res = await _client.post(ApiConstants.orderMachine, params: params);
      print(res);
      return CustomerOrderMapper.fromMap(res);
    });
  }

  Future<Either<AppError, void>> editProfile(
      Map<String, dynamic> params) async {
    return ApiCallWithError.call(() async {
      await _client.post(ApiConstants.editProfile, params: params);
    });
  }
}
