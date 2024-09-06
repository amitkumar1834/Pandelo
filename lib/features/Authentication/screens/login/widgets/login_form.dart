import 'package:e_commerce_app/features/Authentication/screens/password_configuration/forgot_password.dart';
import 'package:e_commerce_app/features/Authentication/screens/signup/sign_up.dart';
import 'package:e_commerce_app/navigation_menu.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.spaceBtwSections),
      child: Form(
        child: Column(
          children: [
            //Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: ETextStrings.email,
              ),
            ),

            const SizedBox(height: Sizes.spaceBtwInputFields),

            //password
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.key),
                labelText: ETextStrings.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwInputFields / 2),

            //forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember me
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text(
                      ETextStrings.rememberMe,
                    ),
                  ],
                ),
                //forgot password
                TextButton(
                  onPressed: () {
                    Get.to(() => const ForgotPassword());
                  },
                  child: const Text(ETextStrings.forgetPassword),
                ),
              ],
            ),
            const SizedBox(height: Sizes.spaceBtwSections),

            //login button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Get.to(
                    () => const NavigationMenu(),
                  );
                },
                child: const Text(
                  ETextStrings.signin,
                ),
              ),
            ),
            const SizedBox(height: Sizes.spaceBtwItems),

            //create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignUpScreen());
                },
                child: const Text(
                  ETextStrings.createAccount,
                ),
              ),
            ),

            const SizedBox(height: Sizes.spaceBtwSections),
          ],
        ),
      ),
    );
  }
}
