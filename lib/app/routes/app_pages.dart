import 'package:get/get.dart';
import 'package:wordly_project/app/bindings/contacts_binding.dart';
import 'package:wordly_project/app/bindings/detail_binding.dart';
import 'package:wordly_project/app/bindings/home_binding.dart';
import 'package:wordly_project/app/features/contacts/imports.dart';
import 'package:wordly_project/app/features/detail/imports.dart';
import 'package:wordly_project/app/features/home/imports.dart';
import 'package:wordly_project/app/features/screens/offline/imports.dart';
import 'package:wordly_project/app/routes/app_routes.dart';

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
            ContactsBinding(),
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
                ContactsBinding(),
              ],
            ),
          ],
        ),
      ],
    ),
  ];
}
