import 'package:e_commerce_app/features/Authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(Sizes.defaultSpace),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          //Heading
          Text(
            ETextStrings.forgetPasswordTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: Sizes.spaceBtwItems),
          Text(
            ETextStrings.forgetPasswordSubTitle,
            style: Theme.of(context).textTheme.labelMedium,
          ),

          const SizedBox(height: Sizes.spaceBtwSections * 2),

          //textfield
          TextFormField(
            decoration: const InputDecoration(
              labelText: ETextStrings.email,
              prefixIcon: Icon(
                Iconsax.direct_right,
              ),
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwSections),

          //submit button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.off(
                  () => const ResetPassword(),
                );
              },
              child: const Text(ETextStrings.submit),
            ),
          )
        ]),
      ),
    );
  }
}
