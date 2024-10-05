import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/static.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';

class BannerSlide extends StatelessWidget {
  const BannerSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(imageAsset('banner.png'), fit: BoxFit.cover),
          ),
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(24, 13, 24, 13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(6, 4, 6, 4),
                        color: const Color(0xFFED5151),
                        child: const Text(
                          "Promo",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: ColorMain.white),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: const Offset(0, 1),
                      child: const SizedBox(
                        width: 203,
                        child: Text(
                          "Buy one get one FREE",
                          style: TextStyle(
                            height: 1.5,
                            color: ColorMain.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
