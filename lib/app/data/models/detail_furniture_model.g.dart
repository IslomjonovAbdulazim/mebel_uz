// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_furniture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailFurnitureModelImpl _$$DetailFurnitureModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailFurnitureModelImpl(
      id: json['id'] as String,
      model: json['model'] as String,
      price: (json['price'] as num).toInt(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      material: json['material'] as String,
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      description: json['description'] as String,
    );

Map<String, dynamic> _$$DetailFurnitureModelImplToJson(
        _$DetailFurnitureModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'model': instance.model,
      'price': instance.price,
      'images': instance.images,
      'material': instance.material,
      'weight': instance.weight,
      'height': instance.height,
      'width': instance.width,
      'description': instance.description,
    };
