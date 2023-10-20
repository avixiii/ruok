
import 'package:flutter/material.dart';
import 'package:ruok/utils/constants/colors.dart';
import 'package:ruok/utils/constants/image_strings.dart';
import 'package:ruok/utils/constants/sizes.dart';
import 'package:ruok/utils/helpers/helper_functions.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = HelperFunctions.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              color: dark
                  ? ColorConstants.darkerGrey
                  : ColorConstants.grey,
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: Sizes.iconMd,
              height: Sizes.iconMd,
              image: AssetImage(ImageLinks.google),
            ),
          ),
        ),
        const SizedBox(width: Sizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
              color: dark
                  ? ColorConstants.darkerGrey
                  : ColorConstants.grey,
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: Sizes.iconMd,
              height: Sizes.iconMd,
              image: AssetImage(ImageLinks.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
