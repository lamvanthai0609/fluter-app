import 'package:flutter/material.dart';
import 'package:flutter_application_1/libs/helper/svg.dart';
import 'package:flutter_application_1/libs/util/themes/color.dart';

class BottomNavigation extends StatelessWidget {
  final TabController tabController;
  final Function(int) setIndexState;

  const BottomNavigation(
      {super.key, required this.tabController, required this.setIndexState});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      showSelectedLabels: false,
      currentIndex: tabController.index,
      selectedItemColor: ColorMain.primary,
      unselectedItemColor: ColorMain.fourth,
      landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
      onTap: (index) {
        tabController.animateTo(index);
        setIndexState(index);
      },
      items: [
        _buildBottomNavItem(AppSVG.homeOutline(),
            AppSVG.home(width: 24, height: 24, color: ColorMain.primary), 0),
        _buildBottomNavItem(AppSVG.heartOutline(),
            AppSVG.heart(width: 24, height: 24, color: ColorMain.primary), 1),
        _buildBottomNavItem(AppSVG.bagOutline(),
            AppSVG.bag(width: 24, height: 24, color: ColorMain.primary), 2),
        _buildBottomNavItem(
            AppSVG.notificationOutline(),
            AppSVG.notification(
                width: 24, height: 24, color: ColorMain.primary),
            3),
      ],
    );
  }

  BottomNavigationBarItem _buildBottomNavItem(
      Widget icon, Widget activeIcon, int index) {
    return BottomNavigationBarItem(
      icon: icon,
      activeIcon: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          activeIcon,
          const SizedBox(height: 5),
          Container(
            width: 10,
            height: 5,
            decoration: BoxDecoration(
                color: ColorMain.primary,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(2)),
          ),
        ],
      ),
      label: '',
    );
  }
}
