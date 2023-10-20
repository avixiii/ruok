import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruok/common/widgets/login_signup/form_divider.dart';
import 'package:ruok/common/widgets/login_signup/social_buttons.dart';
import 'package:ruok/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:ruok/utils/constants/sizes.dart';
import 'package:ruok/utils/constants/text_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(Sizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(Texts.signupTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              // Form
              const SignUpForm(),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),

              // Divider
              FormDivider(dividerText: Texts.orSignUpWith.capitalize!),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),

              // Social Buttons
              const SocialButtons(),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              ),
              const SizedBox(
                height: Sizes.spaceBtwSections,
              )
            ],
          ),
        )));
  }
}
