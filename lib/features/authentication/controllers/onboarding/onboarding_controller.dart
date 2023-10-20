import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ruok/features/authentication/screens/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  // Update current index  when page scroll
  void updatePageIndicator(int index) => currentPageIndex(index);

  // Jump to the specific dot selected page
  void dotNavigationClick(int index) {
    currentPageIndex(index);
    pageController.jumpToPage(index);
  }

  // Update current index and jump to next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  // Update current index and jump to the last page
  void skipPage() {
    Get.to(() => const LoginScreen());
  }
}
