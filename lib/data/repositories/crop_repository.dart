import 'package:agri_connect/core/api/api_client.dart';
import 'package:agri_connect/utils/constants/api_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../core/api/api_call_with_error.dart';
import '../../domain/entites/app_error.dart';
import '../models/crop.dart';

@LazySingleton()
class CropRepository {
  final ApiClient _apiClient;

  CropRepository(this._apiClient);

  Future<Either<AppError, Crop>> scanCrop(Map<String, dynamic> params) async {
    return ApiCallWithError.call(() async {
      //assuming the res is string (change if needed)
      final res = await _apiClient.post(ApiConstants.scanCrop, params: params);
      print(res);
      // print("hi");
      if (res['name'] == 'No Class Found') {
        print("error");
      }
      return crops.firstWhere(
        (element) => element.id == res['id'],
        orElse: () {
          throw AppError(message: 'Crop not found', type: AppErrorType.api);
        },
      );
    });
  }
}
