import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:wordly_project/app/data/models/detail_furniture_model.dart';
import 'package:wordly_project/app/data/models/furniture_model.dart';
import 'package:wordly_project/domain/entities/furniture_entity.dart';

import '../../../domain/respositories/home_repository.dart';
import '../../../utils/constants/api_constants.dart';
import '../../../utils/errors/network_failure.dart';
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
  Future<Either<NetworkFailure, List<FurnitureEntity>>> allFurniture() async {
    try {
      final furniture = await apiClient.allFurniture();
      return Right(furniture.map((f) => f.toEntity()).toList());
    } on DioException catch (e) {
      return Left(
        NetworkFailure(
          message: e.response?.statusMessage,
          statusCode: e.response?.statusCode,
        ),
      );
    }
  }

  @override
  Future<Either<NetworkFailure, DetailFurnitureModel>> detailFurniture(
      String id) async {
    try {
      final furniture = await apiClient.allFurniture();
      return Right(furniture.map((f) => f.toEntity()).toList());
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
