part of 'imports.dart';

class _Furniture extends StatelessWidget {
  const _Furniture();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Obx(
      () => controller.isLoadingFurniture.value
          ? SizedBox(
              height: 450,
              width: 300,
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            )
          : GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
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

class _Categories extends StatelessWidget {
  const _Categories();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Kategoriyalar",
              style: context.display,
            ),
          ),
          SizedBox(height: 4),
          controller.isLoadingCategories.value
              ? Center(
                  child: CircularProgressIndicator.adaptive(),
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      controller.categories.value.length,
                      (int index) {
                        final cat = controller.categories.value[index];
                        return CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            Get.toNamed(AppRoutes.category, arguments: cat);
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            decoration: BoxDecoration(
                              color: context.dividerColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              cat.name,
                              style: context.title,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
