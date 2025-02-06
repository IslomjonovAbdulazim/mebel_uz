import 'package:get/get.dart';

import '../../domain/entities/furniture_entity.dart';
import '../../domain/respositories/home_repository.dart';
import '../../main.dart';
import '../../utils/helpers/status_code_helper.dart';

class HomeController extends GetxController {
  RxBool isLoading = false.obs;
  Rx<List<FurnitureEntity>> furniture = Rx<List<FurnitureEntity>>([]);

  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future<void> init() async {
    isLoading.value = true;
    final api = Get.find<HomeRepository>();
    final result = await api.allFurniture();
    await Future.delayed(Duration(seconds: 1));
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
    List images = [
      "assets/images/fur1.png",
      "assets/images/fur2.png",
      "assets/images/fur3.png",
    ];

    furniture.value = List.generate(10, (int index) {
      return FurnitureEntity(
        id: "-1",
        image: images[index % 3],
        model: faker.lorem.word(),
        price: faker.currency.random.integer(10000000, min: 100000),
      );
    });
  }
}
