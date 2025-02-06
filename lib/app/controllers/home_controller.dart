import 'package:get/get.dart';
import 'package:wordly_project/app/data/models/hospital_furniture_model.dart';

import '../../domain/respositories/home_repository.dart';

class HomeController extends GetxController {
  Rx<List<HospitalFurnitureModel>> furniture =
      Rx<List<HospitalFurnitureModel>>([]);

  Future<void> init() async {
    final api = Get.find<HomeRepository>();
  }
}
