// ignore_for_file: prefer_const_constructors

import 'package:buyo_ecommerce_app/common/styles/spacing_styles.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:buyo_ecommerce_app/utils/constants/text_strings.dart';
import 'package:buyo_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SucessScreen extends StatelessWidget {
  const SucessScreen(
      {super.key,
      required this.title,
      required this.image,
      required this.subtitle,
      required this.onPressed});

  final String title, image, subtitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: TSpacingStyles.paddingWithAppBarHeight,
      child: Column(children: [
        /// Image
        Image(
          image: AssetImage(image),
          width: THelperFunctions.screenWidth() * 0.6,
        ),

        SizedBox(height: TSizes.spaceBtwSections),

        /// Title & Subtitle
        Text(
          title,
          style: Theme.of(context).textTheme.headlineMedium,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: TSizes.spaceBtwItems),

        Text(subtitle,
            style: Theme.of(context).textTheme.labelMedium,
            textAlign: TextAlign.center),
        SizedBox(height: TSizes.spaceBtwSections),

        /// Buttons
        SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onPressed,
              child: const Text(TTexts.tContinue),
            )),
      ]),
    )));
  }
}
