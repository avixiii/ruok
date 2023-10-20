import 'package:flutter/material.dart';
import 'package:ruok/utils/constants/sizes.dart';
import '../../constants/colors.dart';

class AppBarThemeCustom{
  AppBarThemeCustom._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ColorConstants.black, size: Sizes.iconMd),
    actionsIconTheme: IconThemeData(color: ColorConstants.black, size: Sizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: ColorConstants.black),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: ColorConstants.black, size: Sizes.iconMd),
    actionsIconTheme: IconThemeData(color: ColorConstants.white, size: Sizes.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: ColorConstants.white),
  );
}