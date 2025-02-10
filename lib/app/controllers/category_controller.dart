import 'package:get/get.dart';

import '../../domain/entities/furniture_entity.dart';
import '../../main.dart';
import '../data/models/category_model.dart';

class CategoryController extends GetxController {
  Rx<CategoryModel>? category;
  Rx<List<FurnitureEntity>> furniture = Rx<List<FurnitureEntity>>([]);
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    init();
    super.onInit();
  }

  void init() {
    isLoading.value = true;
    category = Get.arguments;
    // final result = Get.find<HomeRepository>().categoryRelatedFurniture(
    //   category?.value.id.toString() ?? "0",
    // );
    furniture.value = List.generate(10, (int index) {
      return FurnitureEntity(
        id: -1,
        name: faker.person.name(),
        price: faker.currency.random.integer(
          10000000,
          min: 100000,
        ),
        discount: false,
        discountPercent: null,
        images: [
          faker.image.loremPicsum(random: index),
        ],
      );
    });
    isLoading.value = false;
  }
}
