import 'package:flutter/material.dart';

class CustomBottomNavBarItem extends BottomNavigationBarItem {
  final String initialLocation;

  const CustomBottomNavBarItem({
    required this.initialLocation,
    required Widget icon,
    String? label,
    Widget? activeIcon,
  }) : super(
          icon: icon,
          label: label,
          activeIcon: activeIcon ?? icon,
        );
}
