import 'package:buyo_ecommerce_app/utils/constants/colors.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:buyo_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsCheckbox extends StatelessWidget {
  const TermsAndConditionsCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: TSizes.defaultSpace,
            height: TSizes.defaultSpace,
            child: Checkbox(
              value: false,
              onChanged: (value) {},
            )),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        Expanded(
          child: Text.rich(TextSpan(children: [
            TextSpan(
                text: '${TTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: '${TTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: TColors.primary)),
            TextSpan(
                text: '${TTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: '${TTexts.termsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: TColors.primary,
                    decoration: TextDecoration.underline,
                    decorationColor: TColors.primary)),
          ])),
        )
      ],
    );
  }
}
