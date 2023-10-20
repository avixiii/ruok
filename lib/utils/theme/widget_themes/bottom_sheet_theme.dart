import 'package:flutter/material.dart';
import 'package:ruok/utils/constants/colors.dart';

class BottomSheetThemeCustom {
  BottomSheetThemeCustom._();

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: ColorConstants.white,
    modalBackgroundColor: ColorConstants.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: ColorConstants.black,
    modalBackgroundColor: ColorConstants.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
