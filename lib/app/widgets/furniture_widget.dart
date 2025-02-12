import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/entities/furniture_entity.dart';
import '../../utils/constants/icon_constants.dart';
import '../../utils/extenstions/color_extension.dart';
import '../../utils/extenstions/text_style_extention.dart';
import '../../utils/helpers/number_formatter_helper.dart';
import '../routes/app_routes.dart';

class FurnitureWidget extends StatelessWidget {
  final FurnitureEntity furniture;

  const FurnitureWidget({super.key, required this.furniture});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Get.toNamed(AppRoutes.detail, arguments: furniture);
      },
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: context.dividerColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: context.backgroundColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: furniture.images.isEmpty
                    ? Container(
                        margin: EdgeInsets.all(40),
                        child: Image.asset(
                          IconConstants.placeholder,
                          color: context.textPrimary,
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        clipBehavior: Clip.antiAlias,
                        child: CachedNetworkImage(
                          imageUrl: furniture.images[0],
                          placeholder: (context, url) =>
                              CircularProgressIndicator.adaptive(
                            backgroundColor: context.textPrimary,
                          ),
                          errorWidget: (context, url, error) => Icon(
                            Icons.error,
                            color: context.error,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
            ),
            SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Text(
                furniture.name,
                style: context.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                "${NumberFormatterHelper.formatWithSeparator(furniture.price)}  UZS",
                style: context.price,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
