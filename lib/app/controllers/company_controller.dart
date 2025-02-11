import 'package:get/get.dart';
import 'package:wordly_project/domain/entities/company_entity.dart';
import 'package:wordly_project/domain/respositories/home_repository.dart';

import '../../utils/helpers/status_code_helper.dart';

class CompanyController extends GetxController {
  Rx<CompanyEntity> company = fakeCompany.obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    isLoading.value = true;
    final result = await Get.find<HomeRepository>().company();
    result.fold(
      (failure) {
        StatusCodeService.showSnackbar(failure.statusCode ?? 505);
      },
      (response) {
        company.value = response;
      },
    );
    isLoading.value = false;
  }
}
