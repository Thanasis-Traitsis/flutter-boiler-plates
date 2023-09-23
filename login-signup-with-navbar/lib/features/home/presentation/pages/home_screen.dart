// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/routes_utils.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../auth/presentation/auth_bloc/auth_bloc.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  const HomeScreen({
    Key? key,
    required this.scaffoldMessengerKey,
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
            BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Text(
                  'Welcome ${state is AuthAuthenticated ? state.user.email : ''}',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
