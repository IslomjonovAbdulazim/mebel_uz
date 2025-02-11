import 'package:get/get.dart';

import '../../domain/entities/category_entity.dart';
import '../../domain/entities/furniture_entity.dart';
import '../../domain/respositories/home_repository.dart';
import '../../utils/helpers/status_code_helper.dart';

class HomeController extends GetxController {
  RxBool isLoadingFurniture = false.obs;
  RxBool isLoadingCategories = false.obs;
  Rx<List<FurnitureEntity>> furniture = Rx<List<FurnitureEntity>>([]);
  Rx<List<CategoryEntity>> categories = Rx<List<CategoryEntity>>([]);

  @override
  void onInit() {
    super.onInit();
    init();
  }

  Future<void> init() async {
    await loadProducts();
    await loadCategories();
  }

  Future<void> loadProducts() async {
    isLoadingFurniture.value = true;
    final result = await Get.find<HomeRepository>().allFurniture();
    isLoadingFurniture.value = false;

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

  Future<void> loadCategories() async {
    isLoadingCategories.value = true;
    final result = await Get.find<HomeRepository>().allCategories();
    isLoadingCategories.value = false;

    result.fold(
      (failure) {
        StatusCodeService.showSnackbar(failure.statusCode ?? 505);
      },
      (response) {
        if (response.isNotEmpty) {
          categories.value = response;
        } else {
          StatusCodeService.showSnackbar(505);
        }
      },
    );
  }
}
