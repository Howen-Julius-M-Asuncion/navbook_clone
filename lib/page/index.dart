import 'package:flutter/cupertino.dart';
import '/appcolors.dart';
import '/tab/home.dart';
import '/tab/navigate.dart';
import '/tab/notifications.dart';

class Indexpage extends StatelessWidget {
  const Indexpage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: AppColors.mainColor,
        inactiveColor: AppColors.accentColor,
        height: 75,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.house),
            activeIcon: Icon(CupertinoIcons.house_fill),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.map_pin),
            activeIcon: Icon(CupertinoIcons.map_pin_ellipse),
            label: 'Navigate',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(CupertinoIcons.calendar),
          //   activeIcon: Icon(CupertinoIcons.calendar_today),
          //   label: 'Schedule',
          // ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.bell),
            activeIcon: Icon(CupertinoIcons.bell_fill),
            label: 'Notifications',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        switch (index) {
          case 0:
            return Homepage();
          case 1:
            return Navpage();
          case 2:
            return Notifpage();
          default:
            return Homepage();
        }
      },
    );
  }
}
