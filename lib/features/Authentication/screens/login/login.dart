import 'package:e_commerce_app/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce_app/common/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce_app/features/Authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app/features/Authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../common/styles/spacing_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo, title and subtitle
              const LoginHeader(),

              //login form
              const LoginForm(),
              //Divider
              EFormDivider(dividerText: ETextStrings.orSignUpwith.capitalize!),
              const SizedBox(height: Sizes.spaceBtwSections),
              //footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
