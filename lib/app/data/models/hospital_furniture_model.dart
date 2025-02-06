import 'package:freezed_annotation/freezed_annotation.dart';

part 'hospital_furniture_model.freezed.dart';
part 'hospital_furniture_model.g.dart';

@freezed
class HospitalFurnitureModel with _$HospitalFurnitureModel {
  const factory HospitalFurnitureModel({
    required String id,
    required String name,
    required String category,
    required String brand,
    String? modelNumber,
    String? description,

    double? heightCm,
    double? widthCm,
    double? depthCm,
    double? weightKg,
    double? loadCapacityKg,

    String? material,
    @Default(false) bool adjustable,
    @Default(false) bool hasWheels,

    int? warrantyYears,
    double? priceUsd,

    @Default([]) List<String> images,
  }) = _HospitalFurnitureModel;

  factory HospitalFurnitureModel.fromJson(Map<String, dynamic> json) =>
      _$HospitalFurnitureModelFromJson(json);
}
