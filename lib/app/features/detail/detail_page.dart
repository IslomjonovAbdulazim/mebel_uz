part of 'imports.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DetailController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.backgroundColor,
        surfaceTintColor: context.backgroundColor,
        title: Text("Mahsulot Haqida"),
        centerTitle: true,
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
              height: 25,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SafeArea(
        child: Obx(
          () => controller.isLoading.value
              ? Center(child: CircularProgressIndicator.adaptive())
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _Images(),
                      _Detail(),
                      SizedBox(height: 200),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
