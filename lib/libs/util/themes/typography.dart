

import 'package:flutter/material.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';

class TypographyMain {

  static const String fontFamily = 'Sora';

  static const TextStyle large = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: ColorMain.third,
    fontFamily: fontFamily
  );

  static const TextStyle medium = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    color: ColorMain.third,
    fontFamily: fontFamily
  );

  static const TextStyle small = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: ColorMain.third,
    fontFamily: fontFamily
  );
}


const TextTheme textTheme = TextTheme(
  bodyLarge: TypographyMain.large,
  bodyMedium: TypographyMain.medium,
  bodySmall: TypographyMain.small
);