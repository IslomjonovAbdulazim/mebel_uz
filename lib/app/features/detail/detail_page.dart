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
