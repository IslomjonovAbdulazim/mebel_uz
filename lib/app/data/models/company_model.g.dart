// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyModelImpl _$$CompanyModelImplFromJson(Map<String, dynamic> json) =>
    _$CompanyModelImpl(
      instagram: json['instagram'] as String,
      telegram: json['telegram'] as String,
      youtube: json['youtube'] as String,
      website: json['website'] as String,
      telegramBot: json['telegram_bot'] as String,
      phones:
          (json['phones'] as List<dynamic>).map((e) => e as String).toList(),
      admin: json['admin'] as String,
      lat: json['lat'] as String,
      lon: json['lon'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CompanyModelImplToJson(_$CompanyModelImpl instance) =>
    <String, dynamic>{
      'instagram': instance.instagram,
      'telegram': instance.telegram,
      'youtube': instance.youtube,
      'website': instance.website,
      'telegram_bot': instance.telegramBot,
      'phones': instance.phones,
      'admin': instance.admin,
      'lat': instance.lat,
      'lon': instance.lon,
      'images': instance.images,
    };
