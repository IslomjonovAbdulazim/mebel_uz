import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/hospital_furniture_model.dart';
import 'package:wordly_project/utils/helpers/status_code_helper.dart';

import '../../domain/respositories/home_repository.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<List<HospitalFurnitureModel>> furniture =
      Rx<List<HospitalFurnitureModel>>([]);

  Future<void> init() async {
    isLoading.value = true;
    final api = Get.find<HomeRepository>();
    final result = await api.furniture();
    isLoading.value = false;

    result.fold(
      (failure) {
        StatusCodeService.showSnackbar(failure.statusCode ?? 505);
      },
      (response) {
        if (response.isNotEmpty) {
          furniture.value = response;
        } else {
          StatusCodeService.showSnackbar(505);
        }
      },
    );
  }
}
