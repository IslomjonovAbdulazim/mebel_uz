// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_furniture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailFurnitureModelImpl _$$DetailFurnitureModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DetailFurnitureModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      description: json['description'] as String,
      weight: (json['weight'] as num).toDouble(),
      height: (json['height'] as num).toInt(),
      width: (json['width'] as num).toInt(),
      material: json['material'] as String?,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$DetailFurnitureModelImplToJson(
        _$DetailFurnitureModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'weight': instance.weight,
      'height': instance.height,
      'width': instance.width,
      'material': instance.material,
      'images': instance.images,
    };
