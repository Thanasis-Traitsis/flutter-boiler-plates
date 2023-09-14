// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/usecases/calculate_size.dart';
import '../../core/utils/routes_utils.dart';
import '../theme/colors.dart';
import 'custom_bottom_navbar_item.dart';

class ScaffoldWithNavBar extends StatefulWidget {
  final String location;
  final Widget child;

  ScaffoldWithNavBar({
    Key? key,
    required this.location,
    required this.child,
  }) : super(key: key);

  @override
  State<ScaffoldWithNavBar> createState() => _ScaffoldWithNavBarState();
}

class _ScaffoldWithNavBarState extends State<ScaffoldWithNavBar> {
  int? _currentIndex;

  @override
  Widget build(BuildContext context) {
    List<CustomBottomNavBarItem> tabs = [
      CustomBottomNavBarItem(
        icon: Icon(
          Icons.house,
          size: calculateSize(context, 26),
        ),
        activeIcon: Icon(
          Icons.house,
          size: calculateSize(context, 26),
        ),
        label: PAGES.home.navbarText,
        initialLocation: PAGES.home.screenPath,
      ),
      CustomBottomNavBarItem(
        icon: Icon(
          Icons.star_border_rounded,
          size: calculateSize(context, 26),
        ),
        activeIcon: Icon(
          Icons.star_border_rounded,
          size: calculateSize(context, 26),
        ),
        label: PAGES.second.navbarText,
        initialLocation: PAGES.second.screenPath,
      ),
    ];

    return Scaffold(
      extendBody: true,
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorsConst.primaryColor,
        selectedItemColor: ColorsConst.white,
        selectedFontSize: calculateSize(context, 18),
        selectedLabelStyle: TextStyle(
          color: ColorsConst.white,
          fontWeight: FontWeight.bold,
          height: 2,
        ),
        unselectedItemColor: ColorsConst.white,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          _goOtherTab(context, index);
        },
        currentIndex: widget.location == PAGES.home.screenPath ? 0 : 1,
        items: tabs,
      ),
    );
  }

  void _goOtherTab(BuildContext context, int index) {
    if (index == _currentIndex) return;

    String location =
        index == 0 ? PAGES.home.screenName : PAGES.second.screenName;

    setState(() {
      _currentIndex = index;
    });

    context.goNamed(location);
  }
}
