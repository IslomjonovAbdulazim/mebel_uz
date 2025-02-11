import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordly_project/domain/entities/detail_furniture_entity.dart';

part 'detail_furniture_model.freezed.dart';
part 'detail_furniture_model.g.dart';

@freezed
class DetailFurnitureModel with _$DetailFurnitureModel {
  const factory DetailFurnitureModel({
    required int id,
    required String name,
    required int price,
    required String description,
    required double weight,
    required int height,
    required int width,
    required String? material,
    required List<String> images,
  }) = _DetailFurnitureModel;

  factory DetailFurnitureModel.fromJson(Map<String, dynamic> json) =>
      _$DetailFurnitureModelFromJson(json);
}

extension DetailFurnitureModelExtension on DetailFurnitureModel {
  DetailFurnitureEntity toEntity() {
    return DetailFurnitureEntity(
      id: id,
      name: name,
      price: price,
      description: description,
      weight: weight,
      height: height,
      width: width,
      images: images,
      material: material ?? "No material",
    );
  }
}
