part of 'imports.dart';

class CompanyPage extends StatelessWidget {
  const CompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CompanyController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.backgroundColor,
        surfaceTintColor: context.backgroundColor,
        title: Image.asset(
          BrandConstants.long,
          height: 150,
          alignment: Alignment.centerLeft,
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => controller.isLoading.value
            ? Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    _SocialAccounts(),
                    Divider(color: context.dividerColor),
                    _Contact(),
                    Divider(color: context.dividerColor),
                    _Location(),
                    SizedBox(height: 200),
                  ],
                ),
              ),
      ),
    );
  }
}
