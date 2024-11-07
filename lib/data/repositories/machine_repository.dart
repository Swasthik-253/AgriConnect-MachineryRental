import 'package:agri_connect/core/api/api_call_with_error.dart';
import 'package:agri_connect/core/api/api_client.dart';
import 'package:agri_connect/data/models/machine.dart';
import 'package:agri_connect/domain/entites/app_error.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../utils/constants/api_constants.dart';

@LazySingleton()
class MachineRepository {
  final ApiClient _apiClient;

  MachineRepository(this._apiClient);

  Future<Either<AppError, List<Machine>>> getMachines(
      Map<String, dynamic> params) async {
    return ApiCallWithError.call(() async {
      final res =
          await _apiClient.post(ApiConstants.getMachines, params: params);
      // print(res.ownerContact);
      return (res as List).map((e) => MachineMapper.fromMap(e)).toList();
    });
  }

  Future<Either<AppError, void>> addMachine(Map<String, dynamic> params) {
    return ApiCallWithError.call(
        () => _apiClient.post(ApiConstants.addMachine, params: params));
  }
}
