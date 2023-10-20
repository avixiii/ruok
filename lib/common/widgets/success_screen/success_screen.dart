import 'package:flutter/material.dart';
import 'package:ruok/common/styles/spacing_styles.dart';
import 'package:ruok/utils/constants/sizes.dart';
import 'package:ruok/utils/constants/text_strings.dart';
import 'package:ruok/utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Image(
                  image: AssetImage(image),
                  width: HelperFunctions.screenWidth() * 0.6),
              const SizedBox(height: Sizes.spaceBtwSections),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: Sizes.spaceBtwItems,
              ),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: Sizes.spaceBtwSections),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: onPressed, // This line is changed
                    child: const Text(Texts.txtContinue),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
