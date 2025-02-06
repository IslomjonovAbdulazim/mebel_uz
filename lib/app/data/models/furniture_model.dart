import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordly_project/domain/entities/furniture_entity.dart';

part 'furniture_model.freezed.dart';
part 'furniture_model.g.dart';

@freezed
class FurnitureModel with _$FurnitureModel {
  const factory FurnitureModel({
    required String id,
    required String model,
    required int price,
    required String image,
  }) = _FurnitureModel;

  factory FurnitureModel.fromJson(Map<String, dynamic> json) =>
      _$FurnitureModelFromJson(json);
}

extension FurnitureModelX on FurnitureModel {
  FurnitureEntity toEntity() {
    return FurnitureEntity(
      image: image,
      model: model,
      price: price,
      id: id,
    );
  }
}
