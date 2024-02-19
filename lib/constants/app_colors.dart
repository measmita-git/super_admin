import 'dart:ui';

import 'package:flutter/cupertino.dart';

class AppColors {
  static const Color primaryColor = Color(0xff8B4CFC);
  static const Color darkborderColor = Color(0xff333333);

  static const LinearGradient crisisButton = LinearGradient(
    colors: [
      Color(0xffF991A1), // Start color
      Color(0xffFF384A), // End color
    ],
    // begin: Alignment.topLeft,
    // end: Alignment.bottomRight,
    // stops: [0.0, 1.0],
  );
  static const Color darkTextColor = Color(0xffD9D9D9);
  static const Color darkBackgroundColor = Color(0xff222222);
  static const Color textColor = Color(0xff868686);
  static const LinearGradient primaryGradient = LinearGradient(
    colors: [
      Color(0xff8B4CFC), // Start color
      Color(0xff8B4CFC9C), // End color
    ],
    // begin: Alignment.topLeft,
    // end: Alignment.bottomRight,
    // stops: [0.0, 1.0],
  );
}