import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

abstract class Styles {
  
  static TextStyle textFontSemiBold({
    Color color = black,
    required double size,
    double letterSpacing = 0,
  }) {
    return TextStyle(
      color: color,
      fontSize: size.sp,
      letterSpacing: letterSpacing,
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle textFontBold({
    Color color = black,
    required double size,
    double letterSpacing = 0,
  }) {
    return TextStyle(
      color: color,
      fontSize: size.sp,
      letterSpacing: letterSpacing,
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle textFontMedium({
    Color color = black,
    required double size,
    double letterSpacing = 0,
  }) {
    return TextStyle(
      color: color,
      fontSize: size.sp,
      letterSpacing: letterSpacing,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle textFontRegular({
    Color color = black,
    required double size,
    double height = 1.4,
    double letterSpacing = 0,
  }) {
    return TextStyle(
      color: color,
      fontSize: size.sp,
      height: height,
      letterSpacing: letterSpacing,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle textFontRegularOverFlow({
    Color color = black,
    required double size,
    double height = 1.4,
    double letterSpacing = 0,
  }) {
    return TextStyle(
      color: color,
      fontSize: size.sp,
      height: height,
      letterSpacing: letterSpacing,
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.w400,
    );
  }
}
