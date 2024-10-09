import 'package:flutter/material.dart';

class ScreenBreakPoint {
  ScreenBreakPoint({required this.context});

  BuildContext context;

  bool isMobileScreen() {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth < 600;
  }

  bool isTabletScreen() {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth < 1200;
  }

  bool isDesktopScreen() {
    double screenWidth = MediaQuery.of(context).size.width;
    return screenWidth >= 1200;
  }
}
