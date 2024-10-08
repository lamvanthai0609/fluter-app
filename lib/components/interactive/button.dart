import 'package:flutter/material.dart';
import 'package:flutter_application_1/libs/helper/variant.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key,
      this.label,
      this.child,
      this.onPressed,
      this.width,
      this.bgColor,
      this.height,
      this.padding,
      this.borderRadius,
      this.borderColor,
      this.variant = ButtonVariant.primary});

  final String? label;
  final Widget? child;
  final Function? onPressed;
  final double? width;
  final double? height;
  final Color? bgColor;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final Color? borderColor;
  final ButtonVariant? variant;

  @override
  Widget build(BuildContext context) {
    Color? backgroundColorDefault = variant == ButtonVariant.primary
        ? ColorMain.primary
        : ColorMain.primary[600]?.withOpacity(0.1);
    double? borderSize = variant == ButtonVariant.primary ? 0 : 1;

    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: bgColor ?? backgroundColorDefault,
            elevation: 0,
            padding: padding ?? const EdgeInsets.fromLTRB(20, 16, 20, 16),
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12.0),
            ),
            side: BorderSide(
                color: borderColor ?? Colors.transparent, width: borderSize)),
        onPressed: () => {
          if (onPressed != null) {onPressed!()}
        },
        child: child ??
            Text(
              label ?? "",
              textAlign: TextAlign.center,
              style: const TextStyle(color: ColorMain.white),
            ),
      ),
    );
  }
}
