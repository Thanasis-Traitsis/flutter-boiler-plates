import 'package:flutter/material.dart';

class ColorsConst {
  static Color primaryColor = const Color(0xff2660A4);
  static Color highlightColor = const Color(0xffF19953);

  static Color lightgreyColor = const Color.fromARGB(255, 174, 173, 173);
  static Color darkgreyColor = const Color.fromARGB(255, 80, 80, 80);

  static Color textColor = const Color.fromARGB(255, 41, 41, 41);
  static Color errorColor = const Color.fromARGB(255, 158, 43, 34);

  static Color white = Colors.white;
  static Color black = Colors.black;

  static const int _primaryValue = 0xff2660A4;

  static const MaterialColor primarySwatch = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xFFE4E7EB),
      100: Color(0xFFBCC1C9),
      200: Color(0xFF9299A4),
      300: Color(0xFF68727F),
      400: Color(0xFF454F5F),
      500: Color(_primaryValue),
      600: Color(0xFF0E1521),
      700: Color(0xFF0B1119),
      800: Color(0xFF080C13),
      900: Color(0xFF05070D),
    },
  );
}
