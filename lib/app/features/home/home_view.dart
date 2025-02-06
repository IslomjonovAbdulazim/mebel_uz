part of 'imports.dart';

class _Furniture extends StatelessWidget {
  const _Furniture();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return ListView.builder(
      itemCount: controller.furniture.value.length,
      itemBuilder: (_, int index) {
        final furniture = controller.furniture.value[index];
        return FurnitureWidget(furniture: furniture);
      },
    );
  }
}
