import 'package:e_commerce_app/features/Authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = EHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: EDeviceUtility.getBottomHBarHeight() + 25,
      left: Sizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationOnClick,
        count: 3,
        effect: ExpandingDotsEffect(
          dotColor: dark ? EColors.light : EColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
