import 'package:flutter/material.dart';

class ThemeClass {
  static const Color lightPrimaryColor = Color(0xff0000D0);
  static const Color darkPrimaryColor = Color(0xff0000D0);

  static const Color secondaryColor = Colors.yellow;
  static const Color accentColor = Colors.cyan;

  static ThemeData lightTheme = ThemeData(
    primaryColor: ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: lightPrimaryColor,
      secondary: secondaryColor,
    ),
    textTheme: ThemeData.light().textTheme.copyWith(
      headline6: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: ThemeData.dark().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.dark().copyWith(
      primary: darkPrimaryColor,
    ),
    textTheme: ThemeData.dark().textTheme.copyWith(
      headline6: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
    ),
  );
}
