part of 'imports.dart';

List images = [
  "https://media.istockphoto.com/id/517188688/photo/mountain-landscape.jpg?s=1024x1024&w=0&k=20&c=z8_rWaI8x4zApNEEG9DnWlGXyDIXe-OmsAyQ5fGPVV8=",
  "https://media.istockphoto.com/id/1403500817/photo/the-craggies-in-the-blue-ridge-mountains.jpg?s=612x612&w=0&k=20&c=N-pGA8OClRVDzRfj_9AqANnOaDS3devZWwrQNwZuDSk=",
  "https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?cs=srgb&dl=pexels-souvenirpixels-414612.jpg&fm=jpg",
];

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
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Obx(
                    () => Center(
                      child: CachedNetworkImage(
                        useOldImageOnUrlChange: true,
                        imageUrl:
                            images[controller.currentImage.value],
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

              SizedBox(height: 5),
              SizedBox(
                height: 65,
                child: Center(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        images.length,
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
                                  imageUrl: images[index],
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
