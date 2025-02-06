import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:wordly_project/app/routes/app_routes.dart';
import 'package:wordly_project/domain/entities/furniture_entity.dart';
import 'package:wordly_project/utils/extenstions/color_extension.dart';
import 'package:wordly_project/utils/extenstions/text_style_extention.dart';
import 'package:wordly_project/utils/helpers/number_formatter_helper.dart';

class FurnitureWidget extends StatelessWidget {
  final FurnitureEntity furniture;

  const FurnitureWidget({super.key, required this.furniture});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Get.toNamed(AppRoutes.detail);
      },
      child: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 10,
        ),
        decoration: BoxDecoration(
          color: context.cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: context.backgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  furniture.image,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                furniture.model,
                style: context.title,
                maxLines: 2,
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "${NumberFormatterHelper.formatWithSeparator(furniture.price)}  UZS",
                style: context.price,
                maxLines: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
