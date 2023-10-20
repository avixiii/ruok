import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ruok/utils/constants/image_strings.dart';
import 'package:ruok/utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'package:ruok/utils/constants/text_strings.dart';
import 'package:ruok/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.back(),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            children: [
              Image(
                image: const AssetImage(ImageLinks.deliveredEmailIllustration),
                width: HelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Text(
                Texts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Text(
                Texts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(Texts.done),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(Texts.resendEmail),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
