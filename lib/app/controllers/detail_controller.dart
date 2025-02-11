import 'package:get/get.dart';
import 'package:wordly_project/domain/entities/detail_furniture_entity.dart';
import 'package:wordly_project/domain/entities/furniture_entity.dart';

import '../../domain/respositories/home_repository.dart';
import '../../utils/helpers/status_code_helper.dart';

class DetailController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<FurnitureEntity> furniture = fakeFurniture.obs;
  RxInt currentImage = 0.obs;

  Rx<DetailFurnitureEntity> detail = fakeDetail.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    isLoading.value = true;
    furniture.value = Get.arguments;
    final result = await Get.find<HomeRepository>()
        .detailFurniture(furniture.value.id.toString());
    result.fold(
      (failure) {
        detail.value = fakeDetail;
        StatusCodeService.showSnackbar(failure.statusCode ?? 505);
      },
      (response) {
        detail.value = response;
      },
    );
    isLoading.value = false;
  }

  void selectImage(int? val) {
    if (val == null) return;
    currentImage.value = val;
  }
}
