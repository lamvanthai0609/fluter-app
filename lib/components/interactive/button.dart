import 'package:flutter/material.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';

class Button extends StatelessWidget {
  const Button(
      {super.key, required this.label, required this.onPressed, this.width});

  final String label;
  final Function onPressed;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed(),
        label: Text(
          label,
          style: const TextStyle(color: ColorMain.white),
        ),
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            backgroundColor: ColorMain.primary),
      ),
    );
  }
}
