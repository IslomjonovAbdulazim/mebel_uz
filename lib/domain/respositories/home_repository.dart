import 'package:dartz/dartz.dart';
import 'package:wordly_project/app/data/models/hospital_furniture_model.dart';

import '../../utils/errors/network_failure.dart';

abstract class HomeRepository {
  Future<Either<NetworkFailure, List<HospitalFurnitureModel>>> furniture();
}
