import 'package:buyo_ecommerce_app/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:buyo_ecommerce_app/utils/constants/sizes.dart';
import 'package:buyo_ecommerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        right: TSizes.defaultSpace,
        bottom: TDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: () => OnBoardingController.instance.nextPage(),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
          ),
          child: const Icon(Iconsax.arrow_right_4),
        ));
  }
}
