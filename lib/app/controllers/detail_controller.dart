import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/category_model.dart';

import '../data/models/detail_furniture_model.dart';

class DetailController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<DetailFurnitureModel>? furniture;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    isLoading.value = true;
    isLoading.value = false;
  }
}

