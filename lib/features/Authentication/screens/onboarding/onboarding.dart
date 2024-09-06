import 'package:e_commerce_app/features/Authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/features/Authentication/screens/onboarding/widgets/onboarding_circular_button.dart';
import 'package:e_commerce_app/features/Authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce_app/features/Authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app/features/Authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.pageUpdateIndicator,
            children: const [
              OnBoardingPage(
                image: EImageStrings.onBoardingImage1,
                title: ETextStrings.onBoardingTitle1,
                subTitle: ETextStrings.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: EImageStrings.onBoardingImage2,
                title: ETextStrings.onBoardingTitle2,
                subTitle: ETextStrings.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: EImageStrings.onBoardingImage3,
                title: ETextStrings.onBoardingTitle3,
                subTitle: ETextStrings.onBoardingSubTitle3,
              ),
            ],
          ),
          //skip button
          const OnBoardingSkip(),

          //Dot navigation smooth indicator
          const OnBoardingDotNavigation(),

          //circular button
          const OnBoardingCircularbutton(),
        ],
      ),
    );
  }
}
