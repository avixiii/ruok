import 'package:flutter/material.dart';
import 'package:ruok/utils/constants/image_strings.dart';
import 'package:ruok/utils/constants/sizes.dart';
import 'package:ruok/utils/constants/text_strings.dart';
import 'package:ruok/utils/helpers/helper_functions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Logo
        Image(
          height: 150,
          image: AssetImage(dark
              ? ImageLinks.lightAppLogo
              : ImageLinks.darkAppLogo),
        ),
        Text(Texts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: Sizes.sm),
        Text(Texts.loginSubTitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
