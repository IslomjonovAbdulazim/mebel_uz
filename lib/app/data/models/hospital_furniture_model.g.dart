// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospital_furniture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HospitalFurnitureModelImpl _$$HospitalFurnitureModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HospitalFurnitureModelImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      category: json['category'] as String,
      brand: json['brand'] as String,
      modelNumber: json['modelNumber'] as String?,
      description: json['description'] as String?,
      heightCm: (json['heightCm'] as num?)?.toDouble(),
      widthCm: (json['widthCm'] as num?)?.toDouble(),
      depthCm: (json['depthCm'] as num?)?.toDouble(),
      weightKg: (json['weightKg'] as num?)?.toDouble(),
      loadCapacityKg: (json['loadCapacityKg'] as num?)?.toDouble(),
      material: json['material'] as String?,
      adjustable: json['adjustable'] as bool? ?? false,
      hasWheels: json['hasWheels'] as bool? ?? false,
      warrantyYears: (json['warrantyYears'] as num?)?.toInt(),
      priceUsd: (json['priceUsd'] as num?)?.toDouble(),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$HospitalFurnitureModelImplToJson(
        _$HospitalFurnitureModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'brand': instance.brand,
      'modelNumber': instance.modelNumber,
      'description': instance.description,
      'heightCm': instance.heightCm,
      'widthCm': instance.widthCm,
      'depthCm': instance.depthCm,
      'weightKg': instance.weightKg,
      'loadCapacityKg': instance.loadCapacityKg,
      'material': instance.material,
      'adjustable': instance.adjustable,
      'hasWheels': instance.hasWheels,
      'warrantyYears': instance.warrantyYears,
      'priceUsd': instance.priceUsd,
      'images': instance.images,
    };
