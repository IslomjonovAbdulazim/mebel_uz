import 'package:get/get.dart';

import '../../domain/entities/furniture_entity.dart';
import '../../domain/respositories/home_repository.dart';
import '../../main.dart';
import '../../utils/helpers/status_code_helper.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<List<FurnitureEntity>> furniture = Rx<List<FurnitureEntity>>([]);

  Future<void> init() async {
    isLoading.value = true;
    final api = Get.find<HomeRepository>();
    final result = await api.allFurniture();
    await Future.delayed(Duration(seconds: 3));
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

    furniture.value = List.generate(10, (int index) {
      return FurnitureEntity(
        id: "-1",
        image: "",
        model: faker.lorem.word(),
        price: faker.currency.random.integer(10000000, min: 100000),
      );
    });
  }
}
