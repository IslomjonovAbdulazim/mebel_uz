part of 'imports.dart';

class OfflinePage extends StatelessWidget {
  OfflinePage({super.key});

  final connectivityService = Get.find<ConnectivityService>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (connectivityService.isOnline.value) {
        if (Get.currentRoute == AppRoutes.offline) {
          Get.back();
        }
      }
      return Scaffold(
        backgroundColor: context.backgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SvgPicture.asset(
                      ImageConstants.connectionLost,
                    ),
                  ),
                  Text(
                    TitleConstants.connectionLost,
                    style: context.headline,
                  ),
                  Text(
                    DescriptionConstants.connectionLost,
                    style: context.body,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: context.elevatedButtonStyle,
                    onPressed: () {
                      final connectivityService =
                          Get.find<ConnectivityService>();

                      if (connectivityService.isOnline.value) {
                        Get.back();
                      } else {
                        Get.closeAllSnackbars();
                        Get.snackbar(
                          TitleConstants.noConnection,
                          DescriptionConstants.noConnection,
                          snackPosition: SnackPosition.TOP,
                        );
                      }
                    },
                    child: Center(
                      child: Text(
                        "Retry",
                        style: context.elevatedButton,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
