part of 'imports.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DetailController>();
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: controller.isLoading.value
            ? CircularProgressIndicator.adaptive()
            : Text(
                "arg.toString()",
                style: context.display,
              ),
      ),
    );
  }
}
