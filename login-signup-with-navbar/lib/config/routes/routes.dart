// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/utils/page_transition.dart';
import '../../core/utils/routes_utils.dart';
import '../../features/auth/presentation/pages/auth_screen.dart';
import '../../features/error/presentation/pages/error_screen.dart';
import '../../features/home/presentation/pages/home_screen.dart';
import '../../features/login/presentation/pages/login_screen.dart';
import '../../features/second_page/presentation/pages/second_screen.dart';
import '../../features/signup/presentation/pages/signup_screen.dart';
import '../navigation_bar/scaffold_with_navbar.dart';

class AppRouter {
  final GlobalKey<NavigatorState> rootNavigatorKey;
  final GlobalKey<NavigatorState> shellNavigatorKey;
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  AppRouter({
    required this.rootNavigatorKey,
    required this.shellNavigatorKey,
    required this.scaffoldMessengerKey,
  });

  late final GoRouter router = GoRouter(
    errorBuilder: (context, state) => ErrorScreen(
      scaffoldMessengerKey: scaffoldMessengerKey,
    ),
    initialLocation: '/auth',
    navigatorKey: rootNavigatorKey,
    routes: [
      ShellRoute(
        navigatorKey: shellNavigatorKey,
        pageBuilder: (context, state, child) {
          return NoTransitionPage(
            child: ScaffoldWithNavBar(
              location: state.uri.toString(),
              child: child,
            ),
          );
        },
        routes: <RouteBase>[
          GoRoute(
            parentNavigatorKey: shellNavigatorKey,
            path: PAGES.home.screenPath,
            name: PAGES.home.screenName,
            builder: (context, state) => HomeScreen(
              scaffoldMessengerKey: scaffoldMessengerKey,
            ),
            pageBuilder: (context, state) =>
                buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: HomeScreen(
                scaffoldMessengerKey: scaffoldMessengerKey,
              ),
            ),
          ),
          GoRoute(
            parentNavigatorKey: shellNavigatorKey,
            path: PAGES.second.screenPath,
            name: PAGES.second.screenName,
            builder: (context, state) => SecondScreen(
              scaffoldMessengerKey: scaffoldMessengerKey,
            ),
            pageBuilder: (context, state) =>
                buildPageWithDefaultTransition<void>(
              context: context,
              state: state,
              child: SecondScreen(
                scaffoldMessengerKey: scaffoldMessengerKey,
              ),
            ),
          ),
        ],
      ),
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
