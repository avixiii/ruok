import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ruok/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ruok/utils/constants/colors.dart';
import 'package:ruok/utils/constants/sizes.dart';
import 'package:ruok/utils/device/device_utility.dart';
import 'package:ruok/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Positioned(
        right: Sizes.defaultSpace,
        bottom: DeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
            onPressed: () {
              OnBoardingController.instance.nextPage();
            },
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: dark ? ColorConstants.primary : Colors.black),
            child: const Icon(Iconsax.arrow_right_3)));
  }
}