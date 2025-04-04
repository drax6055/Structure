import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const String FONT_FAMILY_DEFAULT = "Roboto";

double fSmall = 12.sp;
double fMedium = 16.sp;
double fLarge = 20.sp;
double fExtraLarge = 24.sp;

/// Small Text Styles
TextStyle styleSmall = TextStyle(
  fontSize: fSmall,
  fontFamily: FONT_FAMILY_DEFAULT,
);

TextStyle styleSmallBold = TextStyle(
  fontSize: fSmall,
  fontFamily: FONT_FAMILY_DEFAULT,
  fontWeight: FontWeight.bold,
);

/// Medium Text Styles
TextStyle styleMedium = TextStyle(
  fontSize: fMedium,
  fontFamily: FONT_FAMILY_DEFAULT,
);

TextStyle styleMediumBold = TextStyle(
  fontSize: fMedium,
  fontFamily: FONT_FAMILY_DEFAULT,
  fontWeight: FontWeight.bold,
);

/// Large Text Styles
TextStyle styleLarge = TextStyle(
  fontSize: fLarge,
  fontFamily: FONT_FAMILY_DEFAULT,
);

TextStyle styleLargeBold = TextStyle(
  fontSize: fLarge,
  fontFamily: FONT_FAMILY_DEFAULT,
  fontWeight: FontWeight.bold,
);

/// Extra Large Text Styles
TextStyle styleExtraLarge = TextStyle(
  fontSize: fExtraLarge,
  fontFamily: FONT_FAMILY_DEFAULT,
);

TextStyle styleExtraLargeBold = TextStyle(
  fontSize: fExtraLarge,
  fontFamily: FONT_FAMILY_DEFAULT,
  fontWeight: FontWeight.bold,
);

/// Button Text Style
TextStyle buttonTextStyle = TextStyle(
  fontSize: fMedium,
  fontWeight: FontWeight.w400,
  fontFamily: FONT_FAMILY_DEFAULT,
);

/// Error Text Style
TextStyle errorTextStyle = TextStyle(
  fontSize: fSmall,
  fontFamily: FONT_FAMILY_DEFAULT,
);

/// Input Text Style
TextStyle inputTextStyle = TextStyle(
  fontSize: fMedium,
  fontFamily: FONT_FAMILY_DEFAULT,
);
