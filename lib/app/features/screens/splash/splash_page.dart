// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:wordly_project/app/routes/app_routes.dart';
// import 'package:wordly_project/utils/services/token_service.dart';
//
// class SplashPage extends StatelessWidget {
//   const SplashPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Future.delayed(Duration.zero, () {
//       if (TokenService.to.hasToken) {
//         Get.offAllNamed(AppRoutes.main);
//       } else {
//         Get.offAllNamed(AppRoutes.onboarding);
//       }
//     });
//     return Scaffold(
//       body: Center(
//         child: CircularProgressIndicator.adaptive(),
//       ),
//     );
//   }
// }
