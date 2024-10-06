import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/static.dart';
import 'package:flutter_application_1/libs/helper/svg.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorMain.white,
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          const SizedBox(height: 20),
          header(context),
          const SizedBox(height: 24),
          content()
        ],
      ),
    );
  }

  Widget header(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
            onTap: () => Navigator.pop(context), child: AppSVG.arrowLeft()),
        const Text(
          'Detail',
          style: TextStyle(
              fontFamily: 'Sora',
              decoration: TextDecoration.none,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: ColorMain.third),
        ),
        AppSVG.heartOutline(color: ColorMain.third)
      ],
    );
  }

  Widget content() {
    return Expanded(
        child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child:
              Image.asset(imageAsset('product_detail.png'), fit: BoxFit.cover),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            const Column(
              children: [
                Text('Caffe Mocha',
                    style: TextStyle(
                        fontSize: 20,
                        decoration: TextDecoration.none,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Sora',
                        color: ColorMain.third))
              ],
            ),
            Row(
              children: [
                Container(
                  child: AppSVG.motorbike(),
                ),
              ],
            )
          ],
        )
      ],
    ));
  }
}
