import 'package:e_commerce_app/features/Authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/features/Authentication/screens/signup/widgets/terms_and_conditons_check_box.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ESignUpForm extends StatelessWidget {
  const ESignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          //first and last name
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: ETextStrings.firstName,
                  ),
                ),
              ),
              const SizedBox(width: Sizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.user),
                    labelText: ETextStrings.lastName,
                  ),
                ),
              ),
            ],
          ),
          //username
          const SizedBox(height: Sizes.spaceBtwInputFields),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.user_edit),
              labelText: ETextStrings.userName,
            ),
          ),

          const SizedBox(height: Sizes.spaceBtwInputFields),
          //email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.direct),
              labelText: ETextStrings.email,
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwInputFields),
          //phonenumber
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.mobile),
              labelText: ETextStrings.phoneNo,
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwInputFields),

          //password
          TextFormField(
            obscureText: true,
            expands: false,
            decoration: const InputDecoration(
              prefixIcon: Icon(Iconsax.key),
              labelText: ETextStrings.password,
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: Sizes.spaceBtwSections),

          //terms and conditions
          const TermsAndConditionCheckerBox(),
          const SizedBox(height: Sizes.spaceBtwSections),

          //signup button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmail()),
              child: const Text(ETextStrings.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
