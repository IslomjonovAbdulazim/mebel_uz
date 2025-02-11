part of 'imports.dart';

class _Furniture extends StatelessWidget {
  const _Furniture();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CategoryController>();
    return Obx(
      () => controller.isLoading.value
          ? Center(
              child: CircularProgressIndicator.adaptive(),
            )
          : GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 3 / 4,
              ),
              itemCount: controller.furniture.value.length,
              itemBuilder: (_, int index) {
                final furniture = controller.furniture.value[index];
                return FurnitureWidget(furniture: furniture);
              },
            ),
    );
  }
}
