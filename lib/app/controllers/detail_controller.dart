import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/detail_furniture_model.dart';
import 'package:wordly_project/utils/helpers/logger.dart';

class DetailController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<DetailFurnitureModel>? furniture;

  Future <void> init() async {
    Logger.log("ID: ${Get.arguments}");
    isLoading.value = true;
    await Future.delayed(Duration(seconds: 1));
    isLoading.value = false;
  }
}
