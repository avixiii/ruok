import 'package:flutter/material.dart';
import 'package:ruok/utils/theme/widget_themes/appbar_theme.dart';
import 'package:ruok/utils/theme/widget_themes/bottom_sheet_theme.dart';
import 'package:ruok/utils/theme/widget_themes/checkbox_theme.dart';
import 'package:ruok/utils/theme/widget_themes/chip_theme.dart';
import 'package:ruok/utils/theme/widget_themes/elevated_button_theme.dart';
import 'package:ruok/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:ruok/utils/theme/widget_themes/text_field_theme.dart';
import 'package:ruok/utils/theme/widget_themes/text_theme.dart';

import '../constants/colors.dart';

class AppThemeCustom {
  AppThemeCustom._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: ColorConstants.grey,
    brightness: Brightness.light,
    primaryColor: ColorConstants.primary,
    textTheme: TextThemeCustom.lightTextTheme,
    chipTheme: ChipThemeCustom.lightChipTheme,
    scaffoldBackgroundColor: ColorConstants.white,
    appBarTheme: AppBarThemeCustom.lightAppBarTheme,
    checkboxTheme: CheckboxThemeCustom.lightCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeCustom.lightBottomSheetTheme,
    elevatedButtonTheme: ElevatedButtonThemeCustom.lightElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemeCustom.lightOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldThemeCustom.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    disabledColor: ColorConstants.grey,
    brightness: Brightness.dark,
    primaryColor: ColorConstants.primary,
    textTheme: TextThemeCustom.darkTextTheme,
    chipTheme: ChipThemeCustom.darkChipTheme,
    scaffoldBackgroundColor: ColorConstants.black,
    appBarTheme: AppBarThemeCustom.darkAppBarTheme,
    checkboxTheme: CheckboxThemeCustom.darkCheckboxTheme,
    bottomSheetTheme: BottomSheetThemeCustom.darkBottomSheetTheme,
    elevatedButtonTheme: ElevatedButtonThemeCustom.darkElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemeCustom.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldThemeCustom.darkInputDecorationTheme,
  );
}
