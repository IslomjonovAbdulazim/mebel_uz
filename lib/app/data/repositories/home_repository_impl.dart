import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wordly_project/app/data/models/hospital_furniture_model.dart';
import 'package:wordly_project/domain/respositories/home_repository.dart';
import 'package:wordly_project/utils/errors/network_failure.dart';

import '../../../utils/constants/api_constants.dart';
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
