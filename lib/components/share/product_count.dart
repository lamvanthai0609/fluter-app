import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/static.dart';
import 'package:flutter_application_1/libs/helper/svg.dart';
import 'package:flutter_application_1/libs/models/product_model.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';

class ProductCount extends StatelessWidget {
  final int count;
  final Function(int) onCountChange;
  // final ProductModel product;

  const ProductCount({
    super.key,
    required this.count,
    required this.onCountChange,
    // required this.product,
  });

  bool get isMin => count == 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imageAsset('card_2.png'),
                  width: 54,
                  height: 54,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Caffe Mocha',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Deep Foam',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 24,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: ColorMain.secondary[200] ?? Colors.black,
                      width: 1),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  disabledColor: Colors.grey,
                  padding: const EdgeInsets.all(0),
                  iconSize: 16,
                  icon: AppSVG.remove(
                    color: isMin ? ColorMain.third[300] : ColorMain.third,
                  ),
                  onPressed: () => {
                    if (!isMin) {onCountChange(count - 1)}
                  },
                ),
              ),
              const SizedBox(width: 18),
              Text(
                count.toString(),
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(width: 18),
              Container(
                height: 24,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: ColorMain.secondary[200] ?? Colors.black,
                      width: 1),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  disabledColor: Colors.grey,
                  icon: AppSVG.add(),
                  padding: const EdgeInsets.all(0),
                  iconSize: 16,
                  onPressed: () => {
                    onCountChange(count + 1),
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
