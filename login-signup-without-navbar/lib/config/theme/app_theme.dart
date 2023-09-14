import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/constants/styles.dart';
import 'colors.dart';

class AppTheme {
  ThemeData lightTheme = ThemeData(
    fontFamily: fontName,
    colorScheme: ColorScheme.light(
      background: ColorsConst.white,
      primary: ColorsConst.primaryColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsConst.primaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all<Color>(ColorsConst.highlightColor),
        foregroundColor: MaterialStateProperty.all<Color>(ColorsConst.white),
        padding: MaterialStateProperty.all<EdgeInsets>(
          buttonSpacing,
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          const TextStyle(
            fontSize: 16,
          ),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadiusButton),
          ),
        ),
      ),
    ),
  );

  // If you want to give the choice for a dark mode in your app
  // ThemeData darkTheme = ThemeData( ... )
}
