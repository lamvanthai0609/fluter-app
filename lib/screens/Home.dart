import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/share/product_card.dart';
import 'package:flutter_application_1/libs/mocks/Cards.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  void test() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          padding: const EdgeInsets.all(8),
          child: Container(
              child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8,
                  runSpacing: 8,
                  children: productMockData.map((product) {
                    return ProductCard(product: product);
                  }).toList()))),
    );
  }
}
