// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buyo_ecommerce_app/common/styles/spacing_styles.dart';
import 'package:buyo_ecommerce_app/common/widgets_login_signup/divider_form.dart';
import 'package:buyo_ecommerce_app/common/widgets_login_signup/social_buttons.dart';
import 'package:buyo_ecommerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:buyo_ecommerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:buyo_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: TSpacingStyles.paddingWithAppBarHeight,
            child: Column(
              children: [
                ///Logo, title and subtitle

                LoginHeader(),

                /// Form
                LoginForm(),

                /// Divider
                TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),

                const SizedBox(
                  height: TSizes.spaceBtwSections,
                ),

                /// Footer
                TSocialButtons()
              ],
            )),
      ),
    );
  }
}
