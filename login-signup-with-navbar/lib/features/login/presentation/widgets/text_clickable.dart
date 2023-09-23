import 'package:flutter/material.dart';

import '../../../../config/theme/colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/usecases/calculate_size.dart';

Widget TextClickale({
  required BuildContext context,
  required String text,
  required String clickableText,
  required Function function,
}) {
  return Wrap(
    children: [
      Text(
        text,
        style: TextStyle(
          color: ColorsConst.textColor,
          fontSize: calculateSize(
            context,
            normalText,
          ),
        ),
      ),
      GestureDetector(
        onTap: () {
          function();
        },
        child: Text(
          clickableText,
          style: TextStyle(
            color: ColorsConst.highlightColor,
            fontWeight: FontWeight.bold,
            fontSize: calculateSize(
              context,
              normalText,
            ),
          ),
        ),
      )
    ],
  );
}
