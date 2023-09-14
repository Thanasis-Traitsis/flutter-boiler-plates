// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/routes_utils.dart';
import '../../../../core/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;
  final String? email;

  const HomeScreen({
    Key? key,
    required this.scaffoldMessengerKey,
    this.email,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        title: PAGES.home.screenTitle,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome $email',
            ),
            ElevatedButton(
              child: const Text(
                'Go to Second Page',
              ),
              onPressed: () {
                context.push(PAGES.second.screenPath);
              },
            ),
          ],
        ),
      ),
    );
  }
}
