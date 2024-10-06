import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/interactive/button.dart';
import 'package:flutter_application_1/libs/helper/svg.dart';
import 'package:flutter_application_1/libs/models/product_model.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
        child: Container(
      padding: const EdgeInsets.fromLTRB(8, 8, 8, 12),
      decoration: BoxDecoration(
        color: ColorMain.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.asset(product.imageUrl,
                    width: 140, height: 128, fit: BoxFit.cover),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    topRight: Radius.circular(12.0),
                  ),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                    color: ColorMain.third.withOpacity(0.3),
                    child: Row(
                      children: [
                        AppSVG.voteStar(color: const Color(0xFFFBBE21)),
                        const SizedBox(width: 4),
                        const Text(
                          '4.8',
                          style: TextStyle(
                              color: ColorMain.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            product.name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            product.description,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ ${product.price}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Button(
                width: 32,
                height: 32,
                padding: const EdgeInsets.all(0),
                child: AppSVG.plusCircle(),
                onPressed: () => Navigator.pushNamed(context, '/detail'),
              )
            ],
          ),
        ],
      ),
    ));
  }
}
