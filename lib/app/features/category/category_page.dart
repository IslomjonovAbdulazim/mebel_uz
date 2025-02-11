part of 'imports.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CategoryController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.backgroundColor,
        surfaceTintColor: context.backgroundColor,
        title: Text(controller.category.value.name),
      ),
      body: SafeArea(child: _Furniture()),
    );
  }
}
