import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruok/common/widgets/success_screen/success_screen.dart';
import 'package:ruok/features/authentication/screens/login/login.dart';
import 'package:ruok/utils/constants/image_strings.dart';
import 'package:ruok/utils/constants/sizes.dart';
import 'package:ruok/utils/constants/text_strings.dart';
import 'package:ruok/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(Sizes.defaultSpace),
            child: Padding(
              padding: const EdgeInsets.all(Sizes.defaultSpace),
              child: Column(
                children: [
                  Image(
                      image: const AssetImage(
                          ImageLinks.deliveredEmailIllustration),
                      width: HelperFunctions.screenWidth() * 0.6),
                  const SizedBox(height: Sizes.spaceBtwSections),
                  Text(
                    Texts.confirmEmail,
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwItems,
                  ),
                  Text(
                    "support@avixiii.com",
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: Sizes.spaceBtwItems,
                  ),
                  Text(
                    Texts.confirmEmailSubTitle,
                    style: Theme.of(context).textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: Sizes.spaceBtwSections),

                  // Buttons
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.to(() => SuccessScreen(
                            image: ImageLinks.staticSuccessIllustration,
                            title: Texts.yourAccountCreatedTitle,
                            subTitle: Texts.yourAccountCreatedSubTitle,
                            onPressed: () => Get.to(() => const LoginScreen()),
                          )),
                      child: const Text(Texts.txtContinue),
                    ),
                  ),
                  const SizedBox(height: Sizes.spaceBtwItems),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(Texts.resendEmail),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
