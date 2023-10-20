import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ruok/common/styles/spacing_styles.dart';
import 'package:ruok/common/widgets/login_signup/form_divider.dart';
import 'package:ruok/common/widgets/login_signup/social_buttons.dart';
import 'package:ruok/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ruok/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ruok/utils/constants/sizes.dart';
import 'package:ruok/utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Logo, Title, Subtitle
              const LoginHeader(),

              // Form
              const LoginForm(),

              // Divider
              FormDivider(dividerText: Texts.orSignInWith.capitalize!),

              const SizedBox(height: Sizes.spaceBtwSections),

              // Footer
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}

