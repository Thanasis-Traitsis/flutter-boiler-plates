import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/routes_utils.dart';
import '../../features/auth/presentation/pages/auth_screen.dart';
import '../../features/error/presentation/pages/error_screen.dart';
import '../../features/home/presentation/pages/home_screen.dart';
import '../../features/login/presentation/pages/login_screen.dart';
import '../../features/second_page/presentation/pages/second_screen.dart';
import '../../features/signup/presentation/pages/signup_screen.dart';

class AppRouter {
  final GlobalKey<NavigatorState> rootNavigatorKey;
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  AppRouter({
    required this.rootNavigatorKey,
    required this.scaffoldMessengerKey,
  });

  late final GoRouter router = GoRouter(
    errorBuilder: (context, state) => ErrorScreen(
      scaffoldMessengerKey: scaffoldMessengerKey,
    ),
    initialLocation: '/auth',
    navigatorKey: rootNavigatorKey,
    routes: [
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: PAGES.auth.screenPath,
        name: PAGES.auth.screenName,
        builder: (context, state) {
          return AuthScreen(
            scaffoldMessengerKey: scaffoldMessengerKey,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: PAGES.home.screenPath,
        name: PAGES.home.screenName,
        builder: (context, state) {
          return HomeScreen(
            scaffoldMessengerKey: scaffoldMessengerKey,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: PAGES.login.screenPath,
        name: PAGES.login.screenName,
        builder: (context, state) {
          return LoginScreen(
            scaffoldMessengerKey: scaffoldMessengerKey,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: PAGES.signup.screenPath,
        name: PAGES.signup.screenName,
        builder: (context, state) {
          return SignupScreen(
            scaffoldMessengerKey: scaffoldMessengerKey,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: PAGES.second.screenPath,
        name: PAGES.second.screenName,
        builder: (context, state) {
          return SecondScreen(
            scaffoldMessengerKey: scaffoldMessengerKey,
          );
        },
      ),
      GoRoute(
        parentNavigatorKey: rootNavigatorKey,
        path: PAGES.error.screenPath,
        name: PAGES.error.screenName,
        builder: (context, state) {
          return ErrorScreen(
            scaffoldMessengerKey: scaffoldMessengerKey,
          );
        },
      ),
    ],
  );
}
