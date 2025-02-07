import 'package:get/get.dart';
import 'package:wordly_project/domain/entities/company_entity.dart';

class ContactController extends GetxController {
  Rx<CompanyEntity>? company;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    init();
  }

  Future<void> init() async {
    isLoading.value = false;
    await Future.delayed(Duration(seconds: 1));
    // company!.value = CompanyEntity(
    //   instagramChannel: instagramChannel,
    //   telegramChannel: telegramChannel,
    //   website: website,
    //   telegramBot: telegramBot,
    //   phoneNumbers: phoneNumbers,
    //   adminName: adminName,
    //   adminUrl: adminUrl,
    //   lat: lat,
    //   lan: lan,
    //   images: images,
    // );
    isLoading.value = true;
  }
}
