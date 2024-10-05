import 'package:flutter/material.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';
import 'package:shimmer/shimmer.dart';

class SkeletonLoader extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;

  const SkeletonLoader({super.key, this.height, this.width, this.color});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: ColorMain.primary[100]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color ?? ColorMain.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
