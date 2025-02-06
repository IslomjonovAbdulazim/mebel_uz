part of 'imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Logger.log("--------------");
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: _Furniture(),
          ),
          Obx(
            () => LoadingPage(
              Get.find<HomeController>().isLoading.value,
            ),
          ),
        ],
      ),
    );
  }
}
