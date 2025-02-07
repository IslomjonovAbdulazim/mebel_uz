import 'package:dartz/dartz.dart';
import 'package:wordly_project/app/data/models/detail_furniture_model.dart';

import '../../utils/errors/network_failure.dart';
import '../entities/furniture_entity.dart';

abstract class HomeRepository {
  Future<Either<NetworkFailure, List<FurnitureEntity>>> allFurniture();

  Future<Either<NetworkFailure, DetailFurnitureModel>> detailFurniture(
    String id,
  );
}
