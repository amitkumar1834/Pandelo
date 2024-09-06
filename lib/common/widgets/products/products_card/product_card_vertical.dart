import 'package:e_commerce_app/common/styles/shadows.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [
          ShadowStyle.verticalProductShadow,
        ],
        borderRadius: BorderRadius.circular(Sizes.productImageRadius),
        color: dark ? EColors.darkGrey : EColors.light,
      ),
      child: Column(
        children: [
          //thumbnail, wishlist button and discount tag
          CircularContainer(
            height: 180,
            padding: const EdgeInsets.all(Sizes.sm),
            backgroundColor: dark ? EColors.dark : EColors.light,
          ),
          //Details
        ],
      ),
    );
  }
}
