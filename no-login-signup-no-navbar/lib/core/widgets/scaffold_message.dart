import 'package:flutter/material.dart';

import '../../config/theme/colors.dart';
import '../constants/sizes.dart';
import '../constants/styles.dart';
import '../usecases/calculate_size.dart';

SnackBar ScaffoldMessage({
  required String message,
  required onTap,
  required BuildContext context,
  bool noError = true,
}) {
  return SnackBar(
    backgroundColor:
        noError ? ColorsConst.primaryColor : ColorsConst.errorColor,
    content: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            message,
            style: TextStyle(
              color: ColorsConst.white,
              fontSize: calculateSize(
                context,
                normalText,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: gap,
        ),
        noError
            ? InkWell(
                onTap: onTap,
                child: Icon(
                  Icons.close,
                  color: ColorsConst.white,
                  size: calculateSize(
                    context,
                    normalIcon,
                  ),
                ),
              )
            : Icon(
                Icons.signal_wifi_connected_no_internet_4_rounded,
                color: ColorsConst.white,
                size: calculateSize(
                  context,
                  normalIcon,
                ),
              ),
      ],
    ),
    elevation: 5,
    behavior: SnackBarBehavior.floating,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    duration: noError ? const Duration(seconds: 3) : const Duration(days: 1),
  );
}
