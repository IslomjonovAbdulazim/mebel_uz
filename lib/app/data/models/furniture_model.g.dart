// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'furniture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FurnitureModelImpl _$$FurnitureModelImplFromJson(Map<String, dynamic> json) =>
    _$FurnitureModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: (json['price'] as num).toInt(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$FurnitureModelImplToJson(
        _$FurnitureModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'images': instance.images,
    };
