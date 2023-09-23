// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../core/utils/routes_utils.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class SecondScreen extends StatelessWidget {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  const SecondScreen({
    Key? key,
    required this.scaffoldMessengerKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: PAGES.second.screenTitle,
      ),
      body: const Center(
        child: Text(
          'Welcome to Second Page',
        ),
      ),
    );
  }
}
