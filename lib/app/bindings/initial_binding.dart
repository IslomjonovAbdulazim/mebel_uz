import 'package:get/get.dart';
import 'package:wordly_project/app/data/providers/home_api_client.dart';

import '../data/providers/dio_manager.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() async {
    configureDio();
    Get.put<HomeApiClient>(HomeApiClient(dioInstance), permanent: true);
  }
}
