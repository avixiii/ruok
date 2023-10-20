import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruok/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:ruok/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:ruok/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:ruok/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:ruok/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:ruok/utils/constants/image_strings.dart';
import 'package:ruok/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
        body: Stack(children: [
      // Horizontal Scrollable Pages
      PageView(
          controller: controller.pageController,
          onPageChanged: controller.updatePageIndicator,
          children: const [
            OnBoardingPage(
              image: ImageLinks.onBoardingImage1,
              title: Texts.onBoardingTitle1,
              subTitle: Texts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: ImageLinks.onBoardingImage2,
              title: Texts.onBoardingTitle2,
              subTitle: Texts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: ImageLinks.onBoardingImage3,
              title: Texts.onBoardingTitle3,
              subTitle: Texts.onBoardingSubTitle3,
            ),
          ]),
      // Skip Button
      const OnBoardingSkip(),
      // Dot Navigation Indicator
      const OnBoardingDotNavigation(),
      // Circular Button
      const OnBoardingNextButton()
    ]));
  }
}
