import 'package:flutter/material.dart';
import '../../constants/colors.dart';

class ChipThemeCustom {
  ChipThemeCustom._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: ColorConstants.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: ColorConstants.black),
    selectedColor: ColorConstants.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ColorConstants.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: ColorConstants.darkerGrey,
    labelStyle: TextStyle(color: ColorConstants.white),
    selectedColor: ColorConstants.primary,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
    checkmarkColor: ColorConstants.white,
  );
}
