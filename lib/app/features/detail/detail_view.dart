part of 'imports.dart';

class _Images extends StatelessWidget {
  const _Images();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DetailController>();
    return controller.detail.value.images.isNotEmpty
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Obx(
                    () => Center(
                      child: CachedNetworkImage(
                        useOldImageOnUrlChange: true,
                        imageUrl: controller
                            .detail.value.images[controller.currentImage.value],
                        errorWidget: (_, __, ___) =>
                            Icon(Icons.error, color: context.error),
                        placeholder: (context, url) =>
                            CircularProgressIndicator.adaptive(
                          backgroundColor: context.textPrimary,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0),
              SizedBox(
                height: 65,
                child: Center(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        controller.detail.value.images.length,
                        (int index) {
                          return CupertinoButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {
                              controller.selectImage(index);
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 2,
                              ),
                              decoration: BoxDecoration(),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      controller.detail.value.images[index],
                                  errorWidget: (_, __, ___) =>
                                      Icon(Icons.error, color: context.error),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        : Container(
            decoration: BoxDecoration(
              color: context.dividerColor,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 50,
            ),
            child: Image.asset(IconConstants.placeholder),
          );
  }
}

class _Detail extends StatelessWidget {
  const _Detail();

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DetailController>();
    return Obx(
      () => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              controller.detail.value.name,
              style: context.display,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Divider(color: context.dividerColor),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: __Item(
                    title: "Bo'yi",
                    body: "${controller.detail.value.height}cm",
                  ),
                ),
                Expanded(
                  child: __Item(
                    title: "Eni",
                    body: "${controller.detail.value.width}cm",
                  ),
                ),
                Expanded(
                  child: __Item(
                    title: "Vazni",
                    body: "${controller.detail.value.weight}kg",
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: __Item(
                    title: "Material",
                    body: controller.detail.value.material,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Divider(color: context.dividerColor),
            SizedBox(height: 10),
            Text(
              controller.detail.value.description,
              style: context.subtitle,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
