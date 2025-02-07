// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CompanyModelImpl _$$CompanyModelImplFromJson(Map<String, dynamic> json) =>
    _$CompanyModelImpl(
      instagramChannel: json['instagramChannel'] as String,
      telegramChannel: json['telegramChannel'] as String,
      website: json['website'] as String,
      telegramBot: json['telegramBot'] as String,
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      adminName: json['adminName'] as String,
      adminUrl: json['adminUrl'] as String,
      lat: (json['lat'] as num).toDouble(),
      lan: (json['lan'] as num).toDouble(),
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CompanyModelImplToJson(_$CompanyModelImpl instance) =>
    <String, dynamic>{
      'instagramChannel': instance.instagramChannel,
      'telegramChannel': instance.telegramChannel,
      'website': instance.website,
      'telegramBot': instance.telegramBot,
      'phoneNumbers': instance.phoneNumbers,
      'adminName': instance.adminName,
      'adminUrl': instance.adminUrl,
      'lat': instance.lat,
      'lan': instance.lan,
      'images': instance.images,
    };
