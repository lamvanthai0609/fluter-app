import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/interactive/button.dart';
import 'package:flutter_application_1/components/share/product_count.dart';
import 'package:flutter_application_1/libs/helper/svg.dart';
import 'package:flutter_application_1/libs/helper/variant.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';

class DeliverScreen extends StatefulWidget {
  const DeliverScreen({super.key});

  @override
  _DeliverScreenState createState() => _DeliverScreenState();
}

class _DeliverScreenState extends State<DeliverScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          const Text(
            'Deliver Screen',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Jl. Kpg Sutoyo',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai.',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorMain.third[200]),
          ),
          const SizedBox(height: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Button(
                width: 128,
                padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                variant: ButtonVariant.outline,
                borderColor: ColorMain.third[200],
                bgColor: ColorMain.white.withOpacity(0),
                child: Row(
                  children: [
                    AppSVG.edit(),
                    const SizedBox(width: 4),
                    const Text(
                      'Edit Address',
                      style: TextStyle(
                          color: ColorMain.third,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              Button(
                width: 150,
                padding: const EdgeInsets.fromLTRB(12, 6, 12, 6),
                variant: ButtonVariant.outline,
                borderColor: ColorMain.third[200],
                bgColor: ColorMain.white.withOpacity(0),
                child: Row(
                  children: [
                    AppSVG.note(),
                    const SizedBox(width: 4),
                    const Text(
                      'Add Note',
                      style: TextStyle(
                          color: ColorMain.third,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Divider(
              height: 1,
              color: ColorMain.third[100],
            ),
          ),
          const SizedBox(height: 16),
          ProductCount()
        ],
      ),
    );
  }
}
