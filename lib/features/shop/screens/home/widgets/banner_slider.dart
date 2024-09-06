import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/box_images/rounded_images.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BannerSlider extends StatelessWidget {
  const BannerSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          items: banners.map((url) => RoundedImage(imageUrl: url)).toList(),
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) {
              controller.updatePageIndicator(index);
            },
          ),
        ),
        const SizedBox(
          height: Sizes.spaceBtwItems,
        ),
        Obx(
          () => Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < 3; i++)
                CircularContainer(
                  width: 20,
                  height: 4,
                  backgroundColor: controller.carouselCurrentIndex.value == i
                      ? EColors.primary
                      : EColors.grey,
                  margin: const EdgeInsets.only(right: 10),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
