import 'package:flutter/material.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';
import 'package:flutter_application_1/libs/util/themes/typography.dart';

ThemeData themeMain = ThemeData(
    primaryColor: ColorMain.primary,
    fontFamily: 'Sora',
    textTheme: textTheme,
    scaffoldBackgroundColor: const Color(0xFFF9F9F9),
    colorScheme: const ColorScheme(
      primary: ColorMain.primary,
      secondary: ColorMain.secondary,
      surface: Colors.white,
      error: Colors.red,
      onPrimary: Colors.white,
      onSecondary: Colors.black,
      onSurface: Colors.black,
      onError: Colors.white,
      brightness: Brightness.light,
    ));
