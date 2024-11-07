import 'dart:async';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/entites/app_error.dart';

class ApiCallWithError {
  const ApiCallWithError._();

  static Future<Either<AppError, T>> call<T>(Future<T> Function() f) async {
    try {
      return Right(await f());
    } on SocketException {
      return Left(
        AppError(
          type: AppErrorType.network,
        ),
      );
    } on TimeoutException {
      return Left(
        AppError(
          type: AppErrorType.timeout,
        ),
      );
    } on DioException catch (e) {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.sendTimeout:
        case DioExceptionType.receiveTimeout:
          return Left(
            AppError(
              type: AppErrorType.timeout,
            ),
          );
        case DioExceptionType.badResponse:
          {
            return Left(
              AppError(
                type: AppErrorType.api,
                code: e.response?.statusCode,
                message: e.response?.statusMessage,
              ),
            );
          }
        case DioExceptionType.unknown:
          {
            if (e.error is SocketException) {
              return Left(
                AppError(
                  type: AppErrorType.network,
                ),
              );
            }
            return Left(
              AppError(
                type: AppErrorType.unknown,
              ),
            );
          }
        default:
          return Left(
            AppError(
              type: AppErrorType.api,
            ),
          );
      }
    } on Exception {
      return Left(
        AppError(
          type: AppErrorType.api,
        ),
      );
    }
  }
}
