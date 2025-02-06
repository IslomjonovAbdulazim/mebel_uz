import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordly_project/domain/entities/detail_furniture_entity.dart';

part 'detail_furniture_model.freezed.dart';
part 'detail_furniture_model.g.dart';

@freezed
class DetailFurnitureModel with _$DetailFurnitureModel {
  const factory DetailFurnitureModel({
    required String id,
    required String model,
    required int price,
    required List<String> images,
    required String material,
    required double weight,
    required int height,
    required int width,
    required String description,
  }) = _DetailFurnitureModel;

  factory DetailFurnitureModel.fromJson(Map<String, dynamic> json) =>
      _$DetailFurnitureModelFromJson(json);
}

extension DetailFurnitureModelExtension on DetailFurnitureModel {
  DetailFurnitureEntity toEntity() {
    return DetailFurnitureEntity(
      id: id,
      model: model,
      price: price,
      images: images,
      material: material,
      weight: weight,
      height: height,
      width: width,
      description: description,
    );
  }
}
