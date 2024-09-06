import 'package:e_commerce_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:e_commerce_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce_app/common/widgets/products/products_card/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/banner_slider.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  EHomeAppBar(),

                  SizedBox(
                    height: Sizes.spaceBtwSections,
                  ),

                  //searchbar
                  SearchContainer(
                    text: "Search in Store",
                  ),

                  SizedBox(
                    height: Sizes.spaceBtwSections,
                  ),

                  //categories
                  Padding(
                    padding: EdgeInsets.only(left: Sizes.defaultSpace),
                    child: Column(
                      children: [
                        //heading

                        SectionHeading(
                          title: " Popular Categories",
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: Sizes.spaceBtwItems,
                        ),

                        HomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Body
            Padding(
              padding: EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                children: [
                  //promoslider

                  BannerSlider(
                    banners: [
                      EImageStrings.promoBanner1,
                      EImageStrings.promoBanner2,
                      EImageStrings.promoBanner3,
                    ],
                  ),

                  SizedBox(
                    height: Sizes.spaceBtwSections,
                  ),

                  //popular products
                  ProductCardVertical(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
