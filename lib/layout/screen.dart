import 'package:flutter/material.dart';
import 'package:flutter_application_1/libs/helper/svg.dart';
import 'package:flutter_application_1/screens/Home.dart';

class Screen extends StatelessWidget {
  final TabController tabController;

  const Screen({super.key, required this.tabController});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      physics: const NeverScrollableScrollPhysics(),
      controller: tabController,
      children: [
        const Center(
          child: MainScreen(),
        ),
        AppSVG.heart(),
        AppSVG.bag(),
        AppSVG.notification()
      ],
    );
  }
}
