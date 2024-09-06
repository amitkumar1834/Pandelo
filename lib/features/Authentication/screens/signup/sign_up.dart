import 'package:e_commerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_app/features/Authentication/screens/signup/widgets/sign_up_form.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(
                ETextStrings.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),

              //Form

              const ESignUpForm(),
              const SizedBox(height: Sizes.spaceBtwSections),

              //Divider
              EFormDivider(dividerText: ETextStrings.orSignUpwith.capitalize!),

              const SizedBox(height: Sizes.spaceBtwSections),

              //Social Buttons
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
