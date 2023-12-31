import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ruok/features/chat/screens/chats.dart';
import 'package:ruok/features/home/screens/home.dart';
import 'package:ruok/features/mentally/screens/mentally.dart';
import 'package:ruok/features/post/screens/post.dart';
import 'package:ruok/features/profile/screens/profile.dart';
import 'package:ruok/utils/constants/colors.dart';
import 'package:ruok/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = HelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode ? ColorConstants.black : Colors.white,
          indicatorColor: darkMode
              ? ColorConstants.white.withOpacity(0.1)
              : ColorConstants.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: "Home"),
            NavigationDestination(icon: Icon(Iconsax.heart), label: "Mentally"),
            NavigationDestination(icon: Icon(Iconsax.add), label: "Create"),
            NavigationDestination(
                icon: Icon(Iconsax.message), label: "Message"),
            NavigationDestination(icon: Icon(Iconsax.user), label: "Profile"),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const MentallyScreen(),
    const PostCreationScreen(),
    const ChatsScreen(),
    const ProfileScreen()
  ];
}
