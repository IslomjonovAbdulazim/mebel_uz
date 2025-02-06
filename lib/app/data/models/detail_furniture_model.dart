import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordly_project/domain/entities/furniture_entity.dart';

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
  FurnitureEntity toEntity() {
    return FurnitureEntity(
      id: id,
      image: images.isNotEmpty ? images.first : '',
      model: model,
      price: price,
    );
  }
}
