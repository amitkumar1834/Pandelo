import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
    this.onTap,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.defaultSpace),
        child: Container(
          width: EDeviceUtility.getScreenWidth(context),
          padding: const EdgeInsets.all(Sizes.md),
          decoration: BoxDecoration(
              color: showBackground
                  ? dark
                      ? EColors.dark
                      : EColors.light
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(Sizes.cardRadiusLg),
              border:
                  showBorder ? Border.all(color: EColors.darkerGrey) : null),
          child: Row(
            children: [
              Icon(
                icon,
                color: EColors.grey,
              ),
              const SizedBox(
                width: Sizes.spaceBtwItems,
              ),
              Text(text, style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
        ),
      ),
    );
  }
}
