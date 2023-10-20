import 'package:flutter/cupertino.dart';
import 'package:ruok/utils/constants/sizes.dart';

class SpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: Sizes.appBarHeight,
    left: Sizes.defaultSpace,
    bottom: Sizes.defaultSpace,
    right: Sizes.defaultSpace,
  );
}