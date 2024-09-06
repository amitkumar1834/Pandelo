import 'package:e_commerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app/features/Authentication/screens/login/login.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmail extends StatelessWidget {
  const VerifyEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(
              CupertinoIcons.clear,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            Sizes.defaultSpace,
          ),
          child: Column(
            children: [
              //Image
              Image(
                image: const AssetImage(EImageStrings.deliveredEmail),
                width: EHelperFunctions.screenWidth() * 0.6,
              ),

              const SizedBox(height: Sizes.spaceBtwSections),

              //title and subtitle
              Text(
                ETextStrings.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              Text(
                "amitkumarmahakud123@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              Text(
                ETextStrings.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: Sizes.spaceBtwSections),
              //buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(
                      () => SuccessScreen(
                        image: EImageStrings.successfullyDelivered,
                        title: ETextStrings.accountCreated,
                        subTitle: ETextStrings.yourAccountCreatedSubTitle,
                        onPressed: () {
                          Get.to(
                            () => const LoginScreen(),
                          );
                        },
                      ),
                    );
                  },
                  child: const Text(ETextStrings.tContinue),
                ),
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(ETextStrings.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
