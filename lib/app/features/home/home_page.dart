part of 'imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Logger.log("--------------");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.backgroundColor,
        surfaceTintColor: context.backgroundColor,
        title: Image.asset(
          BrandConstants.long,
          height: 150,
          alignment: Alignment.centerLeft,
        ),
        actions: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Get.toNamed(AppRoutes.company);
            },
            child: Image.asset(
              IconConstants.phone,
              color: context.textPrimary,
              alignment: Alignment.centerLeft,
              height: 35,
            ),
          ),
          SizedBox(width: 10),
        ],
        centerTitle: false,
      ),
      body: Stack(
        children: [
          SafeArea(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 10),
              children: [
                _Categories(),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Mahsulotlar",
                    style: context.display,
                  ),
                ),
                _Furniture(),
              ],
            ),
          ),
          Obx(
            () => LoadingPage(
              Get.find<HomeController>().isLoadingFurniture.value,
              colorNeeded: false,
            ),
          ),
        ],
      ),
    );
  }
}
