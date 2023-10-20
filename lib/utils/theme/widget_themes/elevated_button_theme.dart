import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Elevated Button Themes -- */
class ElevatedButtonThemeCustom {
  ElevatedButtonThemeCustom._(); //To avoid creating instances

  /* -- Light Theme -- */
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorConstants.light,
      backgroundColor: ColorConstants.primary,
      disabledForegroundColor: ColorConstants.darkGrey,
      disabledBackgroundColor: ColorConstants.buttonDisabled,
      side: const BorderSide(color: ColorConstants.primary),
      padding: const EdgeInsets.symmetric(vertical: Sizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: ColorConstants.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: ColorConstants.light,
      backgroundColor: ColorConstants.primary,
      disabledForegroundColor: ColorConstants.darkGrey,
      disabledBackgroundColor: ColorConstants.darkerGrey,
      side: const BorderSide(color: ColorConstants.primary),
      padding: const EdgeInsets.symmetric(vertical: Sizes.buttonHeight),
      textStyle: const TextStyle(
          fontSize: 16, color: ColorConstants.textWhite, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Sizes.buttonRadius)),
    ),
  );
}
