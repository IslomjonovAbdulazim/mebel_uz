class CompanyEntity {
  final String instagramChannel;
  final String telegramChannel;
  final String website;
  final String telegramBot;
  final List<String> phoneNumbers;
  final String adminName;
  final String adminUrl;
  final double lat;
  final double lan;
  final List<String> images;

  CompanyEntity({
    required this.instagramChannel,
    required this.telegramChannel,
    required this.website,
    required this.telegramBot,
    required this.phoneNumbers,
    required this.adminName,
    required this.adminUrl,
    required this.lat,
    required this.lan,
    required this.images,
  });
}
