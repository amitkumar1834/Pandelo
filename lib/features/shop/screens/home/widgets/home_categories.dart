import 'package:e_commerce_app/common/widgets/scrollable_categories/scrollable_categories_icon.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return ScrollableCategoriesIcon(
            textColor: EColors.white,
            title: 'shoes',
            image: EImageStrings.shoes,
            onTap: () {},
          );
        },
      ),
    );
  }
}
