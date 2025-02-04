// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buyo_ecommerce_app/common/widgets_login_signup/divider_form.dart';
import 'package:buyo_ecommerce_app/common/widgets_login_signup/social_buttons.dart';
import 'package:buyo_ecommerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:buyo_ecommerce_app/utils/constants/text_strings.dart';
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
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Title
                Text(TTexts.signupTitle,
                    style: Theme.of(context).textTheme.headlineMedium),

                const SizedBox(height: TSizes.spaceBtwSections),

                /// Form
                SignUpForm(),
                const SizedBox(height: TSizes.spaceBtwSections),

                /// Divider
                TFormDivider(
                  dividerText: TTexts.orSignInWith.capitalize!,
                ),
                const SizedBox(height: TSizes.spaceBtwSections),

                /// Social Buttons
                TSocialButtons()
              ],
            )),
      ),
    );
  }
}
