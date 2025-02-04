import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

import '../../app/routes/app_routes.dart';

class ConnectivityService extends GetxService {
  final RxBool isOnline = true.obs;
  final Connectivity _connectivity = Connectivity();
  String? lastRoute;

  Future<ConnectivityService> init() async {
    final List<ConnectivityResult> result =
        await _connectivity.checkConnectivity();
    _updateConnectionStatus(result);

    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);

    return this;
  }

  void _updateConnectionStatus(List<ConnectivityResult> results) {
    final bool currentlyOnline =
        results.any((result) => result != ConnectivityResult.none);

    if (!currentlyOnline) {
      if (Get.currentRoute != AppRoutes.offline) {
        lastRoute = Get.currentRoute;
        Get.offNamed(AppRoutes.offline);
      }
    } else {
      if (Get.currentRoute == AppRoutes.offline && lastRoute != null) {
        Get.offNamed(lastRoute!);
      }
    }

    isOnline.value = currentlyOnline;
  }
}
