import 'package:get/get.dart';
import 'package:wordly_project/app/bindings/contacts_binding.dart';
import 'package:wordly_project/app/bindings/home_binding.dart';
import 'package:wordly_project/app/features/contacts/imports.dart';
import 'package:wordly_project/app/features/detail/imports.dart';
import 'package:wordly_project/app/features/home/imports.dart';
import 'package:wordly_project/app/routes/app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home,
      page: () => HomePage(),
      bindings: [
        HomeBinding(),
      ],
      children: [
        GetPage(
          name: AppRoutes.contacts,
          page: () => ContactsPage(),
          bindings: [
            ContactsBinding(),
          ],
        ),
        GetPage(
          name: AppRoutes.detail,
          page: () => DetailPage(),
        ),
      ],
    ),
  ];
}
