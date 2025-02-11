import 'package:get/get.dart';

import '../../domain/entities/category_entity.dart';
import '../../domain/entities/furniture_entity.dart';
import '../../domain/respositories/home_repository.dart';
import '../../utils/helpers/status_code_helper.dart';

class CategoryController extends GetxController {
  Rx<CategoryEntity> category = CategoryEntity(id: -1, name: "No Category").obs;
  Rx<List<FurnitureEntity>> furniture = Rx<List<FurnitureEntity>>([]);
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    isLoading.value = true;
    category.value = Get.arguments;
    await Future.delayed(Duration(seconds: 1));
    final result = await Get.find<HomeRepository>().categoryRelatedFurniture(
      category.value.id.toString(),
    );

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
    isLoading.value = false;
  }
}
