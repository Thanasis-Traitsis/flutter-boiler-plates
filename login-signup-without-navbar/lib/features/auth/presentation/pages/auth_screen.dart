// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../home/presentation/pages/home_screen.dart';
import '../../../login/presentation/pages/login_screen.dart';
import '../auth_bloc/auth_bloc.dart';

class AuthScreen extends StatelessWidget {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  const AuthScreen({
    Key? key,
    required this.scaffoldMessengerKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is AuthAuthenticated) {
            return HomeScreen(
              scaffoldMessengerKey: scaffoldMessengerKey,
              email: state.user.email!,
            );
          }
          if (state is AuthUnauthenticated) {
            return LoginScreen(
              scaffoldMessengerKey: scaffoldMessengerKey,
            );
          }
          if (state is AuthLoading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            );
          }
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        },
      ),
    );
  }
}
