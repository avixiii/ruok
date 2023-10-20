import 'package:flutter/material.dart';
import 'package:ruok/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ruok/utils/constants/sizes.dart';
import 'package:ruok/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: DeviceUtils.getAppBarHeight(),
      right: Sizes.defaultSpace,
      child: TextButton(
          onPressed: () {
            OnBoardingController.instance.skipPage();
          },
          child: Text(
            "Skip",
            style: Theme.of(context).textTheme.bodyMedium,
          )),
      // Dot Navigation Indicator

      // Circular Button
    );
  }
}
