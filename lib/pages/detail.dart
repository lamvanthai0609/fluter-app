import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/static.dart';
import 'package:flutter_application_1/components/interactive/button.dart';
import 'package:flutter_application_1/libs/helper/svg.dart';
import 'package:flutter_application_1/libs/helper/variant.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';
import 'package:flutter_application_1/sections/detail/description.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPage createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage> {
  String activeSize = 's';

  List<Map<String, dynamic>> sizes = [
    {
      'label': 'S',
      'size': 's',
    },
    {
      'label': 'M',
      'size': 'm',
    },
    {
      'label': 'L',
      'size': 'l',
    },
  ];

  void setSizeState(size) {
    setState(() {
      activeSize = size;
    });
  }

  bool isActiveSize(size) {
    return activeSize == size;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF9F9F9),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 20),
              header(context),
              const SizedBox(height: 24),
              content(),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
        child: Container(
          color: ColorMain.white,
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: ColorMain.third[100]),
                  ),
                  const Text(
                    '\$ 4.53',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: ColorMain.primary),
                  ),
                ],
              ),
              Button(
                borderRadius: BorderRadius.circular(16),
                width: 217,
                child: const Text(
                  'Buy Now',
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: ColorMain.white),
                ),
                onPressed: () => Navigator.pushNamed(context, '/order'),
              )
            ],
          ),
        ),
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
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        AppSVG.heartOutline(color: ColorMain.third)
      ],
    );
  }

  Widget content() {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child:
              Image.asset(imageAsset('product_detail.png'), fit: BoxFit.cover),
        ),
        const SizedBox(height: 16),
        infoAction(),
        const SizedBox(height: 16),
        Divider(color: ColorMain.fourth[100]),
        const SizedBox(height: 16),
        description(),
        const SizedBox(height: 24),
        size()
      ],
    );
  }

  Widget infoAction() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text('Caffe Mocha',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                )),
            Text('Ice/Hot',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: ColorMain.third[100])),
            const SizedBox(height: 16),
            Row(
              children: [
                AppSVG.voteStar(
                    height: 20, width: 20, color: const Color(0xFFFBBE21)),
                const SizedBox(width: 4),
                const Text('4.8',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
                const SizedBox(width: 4),
                Text('(230)',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: ColorMain.third[100])),
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Button(
              bgColor: ColorMain.fourth[100],
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(12),
              child: SizedBox(child: Image.asset(imageAsset('motorbike.png'))),
              onPressed: () => {},
            ),
            const SizedBox(width: 12),
            Button(
              bgColor: ColorMain.fourth[100],
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(12),
              child: SizedBox(child: Image.asset(imageAsset('caffe_bean.png'))),
              onPressed: () => {},
            ),
            const SizedBox(width: 12),
            Button(
              bgColor: ColorMain.fourth[100],
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(12),
              child: SizedBox(child: Image.asset(imageAsset('milk.png'))),
              onPressed: () => {},
            ),
          ],
        )
      ],
    );
  }

  Widget description() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Description", style: TextStyle(fontWeight: FontWeight.w600)),
        SizedBox(height: 8),
        Description(
          text:
              "A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the",
          trimLength: 100,
        )
      ],
    );
  }

  Widget size() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Size", style: TextStyle(fontWeight: FontWeight.w600)),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: sizes
              .map((sizeItem) => Button(
                    width: 96,
                    height: 41,
                    padding: const EdgeInsets.all(0),
                    variant: ButtonVariant.outline,
                    borderRadius: BorderRadius.circular(12),
                    borderColor: isActiveSize(sizeItem['size'])
                        ? ColorMain.primary
                        : ColorMain.fourth,
                    bgColor: isActiveSize(sizeItem['size'])
                        ? ColorMain.primary[600]?.withOpacity(0.1)
                        : ColorMain.white,
                    child: Text(
                      sizeItem['label'],
                      style: TextStyle(
                          color: isActiveSize(sizeItem['size'])
                              ? ColorMain.primary
                              : ColorMain.third),
                    ),
                    onPressed: () => setSizeState(sizeItem['size']),
                  ))
              .toList(),
        )
      ],
    );
  }
}
