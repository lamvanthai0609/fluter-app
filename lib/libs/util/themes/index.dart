import 'package:flutter/material.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';
import 'package:flutter_application_1/libs/util/themes/typography.dart';

ThemeData themeMain = ThemeData(
    primaryColor: ColorMain.primary,
    textTheme: textTheme,
    fontFamily: 'Sora',
    scaffoldBackgroundColor: ColorMain.fourth,
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
