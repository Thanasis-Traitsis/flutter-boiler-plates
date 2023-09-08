import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';
import '../../core/constants/sizes.dart';
import '../../core/constants/styles.dart';
import '../../core/usecases/calculate_size.dart';
import 'colors.dart';

class AppTheme {
  final BuildContext context;

  AppTheme({
    required this.context,
  });

  late final ThemeData lightTheme = ThemeData(
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
          TextStyle(
            fontSize: calculateSize(
              context,
              buttonText,
            ),
          ),
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRaiusButton),
          ),
        ),
      ),
    ),
  );

  // If you want to give the choice for a dark mode in your app
  // ThemeData darkTheme = ThemeData( ... )
}
