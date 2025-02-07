import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/company_entity.dart';

part 'company_model.freezed.dart';
part 'company_model.g.dart';

@freezed
class CompanyModel with _$CompanyModel {
  const factory CompanyModel({
    required String instagramChannel,
    required String telegramChannel,
    required String website,
    required String telegramBot,
    required List<String> phoneNumbers,
    required String adminName,
    required String adminUrl,
    required double lat,
    required double lan,
    required List<String> images,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}

extension CompanyModelX on CompanyModel {
  CompanyEntity toEntity() {
    return CompanyEntity(
      instagramChannel: instagramChannel,
      telegramChannel: telegramChannel,
      website: website,
      telegramBot: telegramBot,
      phoneNumbers: phoneNumbers,
      adminName: adminName,
      adminUrl: adminUrl,
      lat: lat,
      lan: lan,
      images: images,
    );
  }
}
