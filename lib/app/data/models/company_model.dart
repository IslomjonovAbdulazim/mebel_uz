import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/company_entity.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
class CompanyModel with _$CompanyModel {
  const factory CompanyModel({
    required String instagram,
    required String telegram,
    required String youtube,
    required String website,
    @JsonKey(name: "telegram_bot")
    required String telegramBot,
    required List<String> phones,
    required String admin,
    required String lat,
    required String lon,
    required List<String> images,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}

extension CompanyModelX on CompanyModel {
  CompanyEntity toEntity() {
    return CompanyEntity(
      instagramChannel: instagram,
      telegramChannel: telegram,
      website: website,
      telegramBot: telegramBot,
      phoneNumbers: phones,
      adminName: admin,
      lat: double.parse(lat),
      lon: double.parse(lon),
      images: images,
    );
  }
}
