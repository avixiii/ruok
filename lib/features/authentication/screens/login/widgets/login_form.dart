import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ruok/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:ruok/features/authentication/screens/signup/signup.dart';
import 'package:ruok/navigation_menu.dart';
import 'package:ruok/utils/constants/sizes.dart';
import 'package:ruok/utils/constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: Sizes.spaceBtwSections),
          child: Column(
            children: [
              // Email
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    hintText: Texts.emailHint,
                    labelText: Texts.email),
              ),
              const SizedBox(height: Sizes.spaceBtwInputFields),

              // Password
              TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.password_check),
                    hintText: Texts.password,
                    labelText: Texts.password),
              ),
              const SizedBox(height: Sizes.spaceBtwInputFields / 2),

              // Remember Me & Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Remember Me
                  const Row(
                    children: [
                      Checkbox(value: true, onChanged: null),
                      Text(Texts.rememberMe)
                    ],
                  ),
                  // Forget Password
                  TextButton(
                      onPressed: () {
                        Get.to(() => const ForgetPassword());
                      },
                      child: const Text(Texts.forgetPassword))
                ],
              ),
              const SizedBox(height: Sizes.spaceBtwSections),

              // Sign In Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(() => const NavigationMenu());
                    }, child: const Text(Texts.signIn)),
              ),
              const SizedBox(height: Sizes.spaceBtwItems),
              // Create Account Button
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Get.offAll(() => const SignUpScreen());
                  },
                  child: const Text(Texts.createAccount),
                ),
              )
            ],
          ),
        ));
  }
}
