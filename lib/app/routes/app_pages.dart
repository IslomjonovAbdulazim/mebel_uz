import 'package:get/get.dart';
import 'package:wordly_project/app/bindings/company_binding.dart';
import 'package:wordly_project/app/bindings/home_repository_iml_binding.dart';
import 'package:wordly_project/app/features/company/imports.dart';

import '../bindings/contact_binding.dart';
import '../bindings/detail_binding.dart';
import '../bindings/home_binding.dart';
import '../features/contact/imports.dart';
import '../features/detail/imports.dart';
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
      children: [
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
          children: [
            GetPage(
              name: AppRoutes.contact,
              page: () => ContactsPage(),
              bindings: [
                ContactBinding(),
              ],
            ),
          ],
        ),
      ],
    ),
  ];
}
