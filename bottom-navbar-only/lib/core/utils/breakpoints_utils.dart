import 'package:flutter/material.dart';

enum DeviceType {
  mobile,
  tablet,
  desktop,
}

class Breakpoints {
  static const double mobileMaxWidth = 600;
  static const double tabletMaxWidth = 1200;
}

DeviceType getDeviceType(BuildContext context) {
  final double screenWidth = MediaQuery.of(context).size.width;

  if (screenWidth < Breakpoints.mobileMaxWidth) {
    return DeviceType.mobile;
  } else if (screenWidth < Breakpoints.tabletMaxWidth) {
    return DeviceType.tablet;
  } else {
    return DeviceType.desktop;
  }
}

enum DeviceOrientation {
  portrait,
  landscape,
}

DeviceOrientation getDeviceOrientation(BuildContext context) {
  final Orientation orientation = MediaQuery.of(context).orientation;

  if (orientation == Orientation.portrait) {
    return DeviceOrientation.portrait;
  } else {
    return DeviceOrientation.landscape;
  }
}