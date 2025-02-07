import 'package:dartz/dartz.dart';
import 'package:wordly_project/app/data/models/company_model.dart';
import 'package:wordly_project/domain/entities/category_entity.dart';
import 'package:wordly_project/domain/entities/company_entity.dart';

import '../../utils/errors/network_failure.dart';
import '../entities/detail_furniture_entity.dart';
import '../entities/furniture_entity.dart';

abstract class HomeRepository {
  Future<Either<NetworkFailure, List<FurnitureEntity>>> allFurniture();

  Future<Either<NetworkFailure, DetailFurnitureEntity>> detailFurniture(
    String id,
  );

  Future<Either<NetworkFailure, List<CategoryEntity>>> allCategories();

  Future<Either<NetworkFailure, List<FurnitureEntity>>>
      categoryRelatedFurniture(String categoryId);

  Future<Either<NetworkFailure, List<FurnitureEntity>>> discountFurniture();

  Future<Either<NetworkFailure, CompanyEntity>> company();
}
