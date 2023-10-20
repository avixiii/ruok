import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ruok/features/authentication/screens/signup/verify_email.dart';
import 'package:ruok/features/authentication/screens/signup/widgets/terms_conditions_checkbox.dart';
import 'package:ruok/utils/constants/sizes.dart';
import 'package:ruok/utils/constants/text_strings.dart';
import 'package:ruok/utils/helpers/helper_functions.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: Texts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: Sizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: Texts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: Sizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: Texts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: Sizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: Texts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: Sizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: Texts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: Sizes.spaceBtwInputFields,
          ),
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: Texts.password,
                prefixIcon: Icon(Iconsax.password_check),
                suffixIcon: Icon(Iconsax.eye_slash)),
          ),
          const SizedBox(
            height: Sizes.spaceBtwInputFields,
          ),
          TermsAndConditionCheckbox(dark: dark),
          const SizedBox(
            height: Sizes.spaceBtwSections,
          ),
          // Sign Up Button
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const VerifyEmailScreen());
                  }, child: const Text(Texts.createAccount)))
        ],
      ),
    );
  }
}
