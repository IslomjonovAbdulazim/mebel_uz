import 'package:get/get.dart';

import '../bindings/company_binding.dart';
import '../bindings/contact_binding.dart';
import '../bindings/detail_binding.dart';
import '../bindings/home_binding.dart';
import '../bindings/home_repository_iml_binding.dart';
import '../features/category/imports.dart';
import '../features/company/imports.dart';
import '../features/contact/imports.dart';
import '../features/detail/imports.dart';
import '../features/discount/imports.dart';
import '../features/home/imports.dart';
import '../features/screens/offline/imports.dart';
import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.offline,
      page: () => OfflinePage(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      bindings: [
        HomeBinding(),
        HomeRepositoryImlBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.company,
      page: () => CompanyPage(),
      bindings: [
        CompanyBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.detail,
      page: () => DetailPage(),
      bindings: [
        DetailBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.contact,
      page: () => ContactsPage(),
      bindings: [
        ContactBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.discount,
      page: () => DiscountPage(),
      bindings: [
        ContactBinding(),
      ],
    ),
    GetPage(
      name: AppRoutes.category,
      page: () => CategoryPage(),
      bindings: [
        ContactBinding(),
      ],
    ),
  ];
}
