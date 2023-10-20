import 'package:flutter/material.dart';
import 'package:ruok/utils/constants/colors.dart';
import '../../constants/sizes.dart';

class TextFormFieldThemeCustom {
  TextFormFieldThemeCustom._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: ColorConstants.darkGrey,
    suffixIconColor: ColorConstants.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: Sizes.fontSizeMd, color: ColorConstants.black),
    hintStyle: const TextStyle()
        .copyWith(fontSize: Sizes.fontSizeSm, color: ColorConstants.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: ColorConstants.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorConstants.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorConstants.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorConstants.dark),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorConstants.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ColorConstants.warning),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: ColorConstants.darkGrey,
    suffixIconColor: ColorConstants.darkGrey,
    // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
    labelStyle: const TextStyle()
        .copyWith(fontSize: Sizes.fontSizeMd, color: ColorConstants.white),
    hintStyle: const TextStyle()
        .copyWith(fontSize: Sizes.fontSizeSm, color: ColorConstants.white),
    floatingLabelStyle:
        const TextStyle().copyWith(color: ColorConstants.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorConstants.darkGrey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorConstants.darkGrey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorConstants.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 1, color: ColorConstants.warning),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(Sizes.inputFieldRadius),
      borderSide: const BorderSide(width: 2, color: ColorConstants.warning),
    ),
  );
}
