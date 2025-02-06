import 'package:get/get.dart';

import '../controllers/company_controller.dart';

class CompanyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CompanyController());
  }
}
