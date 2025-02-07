import 'package:dartz/dartz.dart';

import '../../utils/errors/network_failure.dart';
import '../entities/detail_furniture_entity.dart';
import '../entities/furniture_entity.dart';

abstract class HomeRepository {
  Future<Either<NetworkFailure, List<FurnitureEntity>>> allFurniture();

  Future<Either<NetworkFailure, DetailFurnitureEntity>> detailFurniture(
    String id,
  );
}
