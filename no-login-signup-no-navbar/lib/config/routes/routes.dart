import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/routes_utils.dart';
import '../../features/error/presentation/pages/error_screen.dart';
import '../../features/home/presentation/pages/home_screen.dart';
import '../../features/second_page/presentation/pages/second_screen.dart';

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
    initialLocation: '/',
    navigatorKey: rootNavigatorKey,
    routes: [
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
