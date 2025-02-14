// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:buyo_ecommerce_app/features/authentication/statecontrollers/onboarding/onboarding_controller.dart';
import 'package:buyo_ecommerce_app/features/authentication/screens/onboarding/widgets/onboarding_nextbutton.dart';
import 'package:buyo_ecommerce_app/utils/constants/image_strings.dart';
import 'package:buyo_ecommerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

import 'widgets/onboarding_dotnavigation.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subtitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subtitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subtitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          ///  Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          OnBoardingDotNavigation(),

          /// Circular Button
          OnBoardingNextButton()
        ],
      ),
    );
  }
}
