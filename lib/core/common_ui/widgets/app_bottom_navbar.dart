import 'package:flutter/material.dart';
import 'package:tarweej_platform/core/helpers/extensions.dart';

import 'bottom_nav_bar/bottom_navbar_indicator.dart';

class AppBottomNavBar extends StatefulWidget {
  const AppBottomNavBar({
    super.key,
  });

  @override
  State<AppBottomNavBar> createState() => _AppBottomNavBarState();
}

class _AppBottomNavBarState extends State<AppBottomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Divider(
          height: 0.3,
          thickness: 0.2,
        ),
        BottomNavBarIndicator(
          tapsCount: 4,
          currentIndex: currentIndex,
          paddingValue: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: context.theme.scaffoldBackgroundColor,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'create'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: 'Profile'),
              ]),
        ),
      ],
    );
  }
}
