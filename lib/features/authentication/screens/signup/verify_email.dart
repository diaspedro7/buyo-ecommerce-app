// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buyo_ecommerce_app/common/succes_screen/sucess_screen.dart';
import 'package:buyo_ecommerce_app/features/authentication/screens/login/login.dart';
import 'package:buyo_ecommerce_app/utils/constants/image_strings.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:buyo_ecommerce_app/utils/constants/text_strings.dart';
import 'package:buyo_ecommerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(TImages.deliveredEmailIllustration),
                width: THelperFunctions.screenWidth() * 0.6,
              ),

              SizedBox(height: TSizes.spaceBtwSections),

              /// Title & Subtitle
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: TSizes.spaceBtwItems),
              Text("email_example@gmail.com",
                  style: Theme.of(context).textTheme.labelLarge,
                  textAlign: TextAlign.center),
              SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.confirmEmailSubTitle,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center),
              SizedBox(height: TSizes.spaceBtwSections),

              ///  Buttons
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.offAll(() => SucessScreen(
                          image: TImages.staticSuccessIllustration,
                          title: TTexts.yourAccountCreatedTitle,
                          subtitle: TTexts.yourAccountCreatedSubTitle,
                          onPressed: () =>
                              Get.offAll(() => const LoginScreen()),
                        )),
                    child: const Text(TTexts.tContinue),
                  )),
              SizedBox(height: TSizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {}, child: const Text(TTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
