import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../domain/respositories/home_repository.dart';
import '../../../utils/constants/api_constants.dart';
import '../../../utils/errors/network_failure.dart';
import '../models/hospital_furniture_model.dart';
import '../providers/home_api_client.dart';

class HomeRepositoryImpl extends HomeRepository {
  final HomeApiClient apiClient;

  HomeRepositoryImpl({Dio? dio})
      : apiClient = HomeApiClient(
          dio ??
              Dio(BaseOptions(
                baseUrl: ApiConstants.baseURL,
                connectTimeout: Duration(seconds: 30),
                receiveTimeout: Duration(seconds: 30),
              )),
        );

  @override
  Future<Either<NetworkFailure, List<HospitalFurnitureModel>>>
      furniture() async {
    try {
      final books = await apiClient.furniture();
      return Right(books);
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.response?.statusMessage,
          statusCode: e.response?.statusCode,
        ),
      );
    }
  }
}
