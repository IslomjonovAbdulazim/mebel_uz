import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/furniture_entity.dart';

part 'furniture_model.freezed.dart';
part 'furniture_model.g.dart';

@freezed
class FurnitureModel with _$FurnitureModel {
  const factory FurnitureModel({
    required int id,
    required String name,
    required int price,
    required bool discount,
    required int? discountPercent,
    required List<String> images,
  }) = _FurnitureModel;

  factory FurnitureModel.fromJson(Map<String, dynamic> json) =>
      _$FurnitureModelFromJson(json);
}

extension FurnitureModelX on FurnitureModel {
  FurnitureEntity toEntity() {
    return FurnitureEntity(
      id: id,
      name: name,
      price: price,
      discount: discount,
      discountPercent: discountPercent,
      images: images,
    );
  }
}
