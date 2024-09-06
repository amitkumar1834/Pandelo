import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class TermsAndConditionCheckerBox extends StatelessWidget {
  const TermsAndConditionCheckerBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            value: true,
            onChanged: (value) {},
          ),
        ),
        const SizedBox(width: Sizes.spaceBtwItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${ETextStrings.lAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ETextStrings.privacyPolicy,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? EColors.white : EColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? EColors.white : EColors.primary,
                    ),
              ),
              TextSpan(
                text: ' ${ETextStrings.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: ETextStrings.termsOfUse,
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                      color: dark ? EColors.white : EColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: dark ? EColors.white : EColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
