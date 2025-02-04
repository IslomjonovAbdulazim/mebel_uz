import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../constants/app_constants.dart';
import '../errors/network_failure.dart';
import '../helpers/logger.dart';

class NetworkService {
  late final Dio _dio;

  /// Constructor initializes Dio with base options and interceptors.
  NetworkService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseUrl,
        connectTimeout: Duration(seconds: AppConstants.timeoutSeconds),
        receiveTimeout: Duration(seconds: AppConstants.timeoutSeconds),
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          Logger.log("REQUEST[${options.method}] => PATH: ${options.path}");
          return handler.next(options); // Continue to the request.
        },
        onResponse: (response, handler) {
          Logger.log(
              "RESPONSE[${response.statusCode}] => DATA: ${response.data}");
          return handler.next(response); // Continue to the response.
        },
        onError: (DioException e, handler) {
          Logger.error(
              "ERROR[${e.response?.statusCode}] => MESSAGE: ${e.message}");
          return handler.next(e); // Continue with error handling.
        },
      ),
    );
  }

  /// Performs a GET request and returns an Either with a NetworkFailure or the response data.
  Future<Either<NetworkFailure, T>> get<T>(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response =
          await _dio.get(endpoint, queryParameters: queryParameters);
      return Right(response.data as T);
    } on DioException catch (e) {
      Logger.error("Dio GET error: ${e.message}");
      return Left(NetworkFailure(
        message: e.message ?? "Error",
        statusCode: e.response?.statusCode,
      ));
    }
  }

  /// Performs a POST request and returns an Either with a NetworkFailure or the response data.
  Future<Either<NetworkFailure, T>> post<T>(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.post(endpoint,
          data: data, queryParameters: queryParameters);
      return Right(response.data as T);
    } on DioException catch (e) {
      Logger.error("Dio POST error: ${e.message}");
      return Left(NetworkFailure(
        message: e.message ?? "Error",
        statusCode: e.response?.statusCode,
      ));
    }
  }

  /// Performs a PUT request and returns an Either with a NetworkFailure or the response data.
  Future<Either<NetworkFailure, T>> put<T>(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.put(endpoint,
          data: data, queryParameters: queryParameters);
      return Right(response.data as T);
    } on DioException catch (e) {
      Logger.error("Dio PUT error: ${e.message}");
      return Left(NetworkFailure(
        message: e.message ?? "Error",
        statusCode: e.response?.statusCode,
      ));
    }
  }

  /// Performs a DELETE request and returns an Either with a NetworkFailure or the response data.
  Future<Either<NetworkFailure, T>> delete<T>(
    String endpoint, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.delete(endpoint,
          data: data, queryParameters: queryParameters);
      return Right(response.data as T);
    } on DioException catch (e) {
      Logger.error("Dio DELETE error: ${e.message}");
      return Left(NetworkFailure(
        message: e.message ?? "Error",
        statusCode: e.response?.statusCode,
      ));
    }
  }
}
