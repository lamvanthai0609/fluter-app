import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/share/product_card.dart';
import 'package:flutter_application_1/libs/mocks/Cards.dart';
import 'package:flutter_application_1/sections/home/banner.dart';
import 'package:flutter_application_1/sections/home/header/header.dart';
import 'package:flutter_application_1/sections/home/product_group.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  void test() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
          child: Column(children: [
        Stack(
          children: [
            const Header(),
            Positioned(
              bottom: 0,
              left: 20,
              right: 20,
              child: Container(
                //padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: const BannerSlide(),
              ),
            ),
          ],
        ),
        ProductGroup(),
        Wrap(
            alignment: WrapAlignment.center,
            spacing: 8,
            runSpacing: 8,
            children: productMockData.map((product) {
              return ProductCard(product: product);
            }).toList()),
        const SizedBox(
          height: 20,
        )
      ])),
    );
  }
}
