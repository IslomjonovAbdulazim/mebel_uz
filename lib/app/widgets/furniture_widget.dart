import 'package:flutter/cupertino.dart';
import 'package:wordly_project/domain/entities/furniture_entity.dart';
import 'package:wordly_project/utils/extenstions/color_extension.dart';
import 'package:wordly_project/utils/extenstions/text_style_extention.dart';

class FurnitureWidget extends StatelessWidget {
  final FurnitureEntity furniture;

  const FurnitureWidget({super.key, required this.furniture});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: context.cardColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  furniture.image,
                ),
              ),
            ),
            Text(
              furniture.model,
              style: context.title,
            ),
            Text(
              "${furniture.price} UZS",
              style: context.price,
            ),
          ],
        ),
      ),
    );
  }
}
