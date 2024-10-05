import 'package:flutter/material.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSVG {
  static const String _baseOutlineIconPath = 'lib/assets/icons/outline/system/';

  static Widget homeOutline({
    double width = 24,
    double height = 24,
    Color? color,
  }) {
    return SvgPicture.asset(
      '${_baseOutlineIconPath}HomeOutline.svg',
      width: width,
      height: height,
      color: color ?? ColorMain.fourth.shade900,
    );
  }

  static Widget home({double width = 24, double height = 24, Color? color}) {
    return SvgPicture.asset(
      '${_baseOutlineIconPath}Home.svg',
      width: width,
      height: height,
      color: color,
    );
  }

  static Widget heart({double width = 24, double height = 24, Color? color}) {
    return SvgPicture.asset(
      '${_baseOutlineIconPath}Heart.svg',
      width: width,
      height: height,
      color: color,
    );
  }

  static Widget heartOutline(
      {double width = 24, double height = 24, Color? color}) {
    return SvgPicture.asset(
      '${_baseOutlineIconPath}HeartOutline.svg',
      width: width,
      height: height,
      color: color ?? ColorMain.fourth.shade900,
    );
  }

  static Widget bag({double width = 24, double height = 24, Color? color}) {
    return SvgPicture.asset(
      '${_baseOutlineIconPath}Bag.svg',
      width: width,
      height: height,
      color: color ?? ColorMain.fourth.shade900,
    );
  }

  static Widget bagOutline(
      {double width = 24, double height = 24, Color? color}) {
    return SvgPicture.asset(
      '${_baseOutlineIconPath}BagOutline.svg',
      width: width,
      height: height,
      color: color ?? ColorMain.fourth.shade900,
    );
  }

  static Widget notification(
      {double width = 24, double height = 24, Color? color}) {
    return SvgPicture.asset(
      '${_baseOutlineIconPath}Notification.svg',
      width: width,
      height: height,
      color: color,
    );
  }

  static Widget notificationOutline(
      {double width = 24, double height = 24, Color? color}) {
    return SvgPicture.asset(
      '${_baseOutlineIconPath}NotificationOutline.svg',
      width: width,
      height: height,
      color: color ?? ColorMain.fourth.shade900,
    );
  }

  static Widget plusCircle(
      {double width = 16, double height = 16, Color? color}) {
    return SvgPicture.asset(
      '${_baseOutlineIconPath}pluscircle.svg',
      width: width,
      height: height,
      color: color ?? ColorMain.white,
    );
  }
}
