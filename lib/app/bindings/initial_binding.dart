import 'package:get/get.dart';
import 'package:wordly_project/app/data/providers/home_api_client.dart';
import 'package:wordly_project/app/data/repositories/home_repository_impl.dart';
import 'package:wordly_project/domain/respositories/home_repository.dart';

import '../data/providers/dio_manager.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() async {
    configureDio();
    Get.put<HomeApiClient>(HomeApiClient(dioInstance), permanent: true);
    Get.put<HomeRepository>(HomeRepositoryImpl(dio: dioInstance));
  }
}
