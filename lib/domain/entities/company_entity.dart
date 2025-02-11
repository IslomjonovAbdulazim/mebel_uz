class CompanyEntity {
  final String instagramChannel;
  final String telegramChannel;
  final String website;
  final String telegramBot;
  final List<String> phoneNumbers;
  final String adminName;
  final double lat;
  final double lon;
  final List<String> images;

  CompanyEntity({
    required this.instagramChannel,
    required this.telegramChannel,
    required this.website,
    required this.telegramBot,
    required this.phoneNumbers,
    required this.adminName,
    required this.lat,
    required this.lon,
    required this.images,
  });
}

final fakeCompany = CompanyEntity(
  instagramChannel: "https://www.instagram.com/fake_company",
  telegramChannel: "https://t.me/fake_company",
  website: "https://fakecompany.com",
  telegramBot: "https://t.me/FakeBot",
  phoneNumbers: ["999999999", "888888888"],
  adminName: "https://t.me/FakeAdmin",
  lat: 15.00000000,
  lon: 58.00000000,
  images: [
    "https://fakecompany.com/image1.jpg",
    "https://fakecompany.com/image2.jpg"
  ],
);
