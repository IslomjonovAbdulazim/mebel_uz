// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'furniture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FurnitureModelImpl _$$FurnitureModelImplFromJson(Map<String, dynamic> json) =>
    _$FurnitureModelImpl(
      id: json['id'] as String,
      model: json['model'] as String,
      price: (json['price'] as num).toInt(),
      image: json['image'] as String,
    );

Map<String, dynamic> _$$FurnitureModelImplToJson(
        _$FurnitureModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'model': instance.model,
      'price': instance.price,
      'image': instance.image,
    };
