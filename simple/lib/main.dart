import 'package:flutter/material.dart';

import 'config/routes/routes.dart';
import 'config/theme/app_theme.dart';
import 'core/usecases/listen_to_connectivity.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final rootNavigatorKey = GlobalKey<NavigatorState>();
    final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

    // Uncomment the function listenToConnectivity, if your app needs Internet connection 
    // listenToConnectivity(
    //   scaffoldKey: scaffoldKey,
    //   context: context,
    // );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldKey,
      title: 'Boiler Plate',
      routerConfig: AppRouter(
        scaffoldMessengerKey: scaffoldKey,
        rootNavigatorKey: rootNavigatorKey,
      ).router,
      theme: AppTheme(context: context).lightTheme,
    );
  }
}