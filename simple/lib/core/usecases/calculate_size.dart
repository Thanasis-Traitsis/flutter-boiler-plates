import 'package:flutter/material.dart';

import '../utils/breakpoints_utils.dart';

double calculateSize(BuildContext context, double baseSize) {
  final deviceType = getDeviceType(context);

  switch (deviceType) {
    case DeviceType.mobile:
      return baseSize * 0.8;
    case DeviceType.tablet:
      return baseSize;
    case DeviceType.desktop:
      return baseSize * 1.2;
    default:
      return baseSize;
  }
}