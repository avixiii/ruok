import 'package:flutter/material.dart';
import 'package:ruok/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ruok/utils/constants/colors.dart';
import 'package:ruok/utils/constants/sizes.dart';
import 'package:ruok/utils/device/device_utility.dart';
import 'package:ruok/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = HelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: DeviceUtils.getBottomNavigationBarHeight() + 25,
        left: Sizes.defaultSpace,
        child: SmoothPageIndicator(
            controller: controller.pageController,
            count: 3,
            onDotClicked: controller.dotNavigationClick,
            effect: ExpandingDotsEffect(
                activeDotColor:
                    dark ? ColorConstants.light : ColorConstants.dark,
                dotHeight: 6)));
  }
}
