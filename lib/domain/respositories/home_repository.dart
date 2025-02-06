import 'package:dartz/dartz.dart';

import '../../utils/errors/network_failure.dart';
import '../entities/furniture_entity.dart';

abstract class HomeRepository {
  Future<Either<NetworkFailure, List<FurnitureEntity>>> allFurniture();
}
