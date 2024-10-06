import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/interactive/button.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';
import 'package:flutter_application_1/components/share/product_card.dart';
import 'package:flutter_application_1/libs/mocks/Cards.dart';

class ProductGroup extends StatefulWidget {
  @override
  _ProductGroup createState() => _ProductGroup();
}

class _ProductGroup extends State<ProductGroup> {
  bool isLoad = true;

  int active = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          SizedBox(
            height: 30,
            child: ListView(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 2),
              scrollDirection: Axis.horizontal,
              children: [
                tab("All Coffee", 0),
                const SizedBox(
                  width: 8,
                ),
                tab("Machiato", 1),
                const SizedBox(
                  width: 8,
                ),
                tab("Latte", 2),
                const SizedBox(
                  width: 8,
                ),
                tab("Americano", 3)
              ],
            ),
          ),
          Wrap(
              alignment: WrapAlignment.center,
              spacing: 8,
              runSpacing: 8,
              children: productMockData.map((product) {
                return ProductCard(product: product);
              }).toList()),
        ],
      ),
    );
  }

  Widget tab(String label, int index) {
    return Button(
      width: 100,
      bgColor: active != index ? Colors.transparent.withOpacity(0) : null,
      padding: const EdgeInsets.all(0),
      borderRadius: BorderRadius.circular(8.0),
      onPressed: () {
        setState(() {
          active = index;
        });
      },
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
            color: active == index ? ColorMain.white : ColorMain.third,
            fontWeight: active == index ? FontWeight.w600 : FontWeight.w500),
      ),
    );
  }
}
