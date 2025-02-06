import 'package:get/get.dart';

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
      ],
      children: [
        GetPage(
          name: AppRoutes.company,
          page: () => ContactsPage(),
          bindings: [
            ContactBinding(),
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
