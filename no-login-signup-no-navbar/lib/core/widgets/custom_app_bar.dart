import 'package:flutter/material.dart';

import '../constants/sizes.dart';
import '../usecases/calculate_size.dart';

PreferredSizeWidget CustomAppBar({
  required BuildContext context,
  required String title,
}) {
  return AppBar(
    title: Text(
      title,
      style: TextStyle(
        fontSize: calculateSize(
          context,
          appBarText,
        ),
      ),
    ),
  );
}
