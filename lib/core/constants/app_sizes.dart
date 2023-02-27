import 'package:flutter/material.dart';

/// [AppSize] class contains: often used sizes, size values and small
/// size widgets.
class AppSize {
  // Constan sizes.
  static const double commonVerticalPadding = 8;
  static const double commonHorizontalPadding = 16;
  static const double commonRadiusValue = 8;
  static const Radius commonRadiusWidget = Radius.circular(commonRadiusValue);

  // Element sizes.
  static const double cardMinimumHeight = 60;
  static const double sizeIcon = 16;
  static const double radiusIcon = 6;
  static const Radius bottomBarRadiusWidget = Radius.circular(16);

  // Often used spaces.
  static const sizedBoxH4 = SizedBox(height: 4);
  static const sizedBoxH8 = SizedBox(height: 8);
  static const sizedBoxH24 = SizedBox(height: 24);
  static const sizedBoxW8 = SizedBox(width: 8);
  static const sizedBoxW24 = SizedBox(width: 24);
}
