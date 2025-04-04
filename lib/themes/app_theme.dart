import 'package:flutter/material.dart';
import 'package:flutter_template/themes/app_colors.dart';
import 'package:flutter_template/themes/testStyle.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: primaryColor,
    textTheme: TextTheme(
      bodyMedium: styleMedium,
      bodySmall: styleSmall,
      bodyLarge: styleLarge
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: white,
        backgroundColor: primaryColor,
        textStyle: buttonTextStyle,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: primaryColor,
    textTheme: TextTheme(
      bodyMedium: styleMedium.copyWith(color: white),
      bodySmall: styleSmall.copyWith(color: white),
      bodyLarge: styleLarge.copyWith(color: white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: white,
        backgroundColor: primaryColor,
        textStyle: buttonTextStyle,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
      ),
    ),
  );
}
