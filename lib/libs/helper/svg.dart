import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSVG {
  static const String _basePath = 'assets/icons/system/';

  static Widget home({
    double width = 24,
    double height = 24,
    Color? color,
  }) {
    return SvgPicture.asset(
      '${_basePath}Home.svg',
      width: width,
      height: height,
      color: color,
    );
  }
  static Widget heart({
    double width = 24,
    double height = 24,
    Color? color,
  }) {
    return SvgPicture.asset(
      '${_basePath}Heart.svg',
      width: width,
      height: height,
      color: color,
    );
  }
  static Widget bag({
    double width = 24,
    double height = 24,
    Color? color,
  }) {
    return SvgPicture.asset(
      '${_basePath}Bag.svg',
      width: width,
      height: height,
      color: color,
    );
  }
  static Widget notification({
    double width = 24,
    double height = 24,
    Color? color,
  }) {
    return SvgPicture.asset(
      '${_basePath}Notification.svg',
      width: width,
      height: height,
      color: color,
    );
  }
}
