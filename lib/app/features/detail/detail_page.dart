part of 'imports.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = Get.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          arg.toString(),
          style: context.display,
        ),
      ),
    );
  }
}
