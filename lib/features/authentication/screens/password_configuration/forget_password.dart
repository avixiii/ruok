import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ruok/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:ruok/utils/constants/sizes.dart';
import 'package:ruok/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                Texts.forgetPasswordTitle,
                style: Theme
                    .of(context)
                    .textTheme
                    .headlineMedium,
              ),
              const SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Text(
                Texts.forgetPasswordSubTitle,
                style: Theme
                    .of(context)
                    .textTheme
                    .labelMedium,
              ),
              const SizedBox(
                height: Sizes.spaceBtwSections * 2,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: Texts.email,
                    prefixIcon: Icon(Iconsax.direct_right)),
              ),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const ResetPassword());
                  },
                  child: const Text(Texts.submit),
                ),
              )
            ],
          ),
        ));
  }
}
