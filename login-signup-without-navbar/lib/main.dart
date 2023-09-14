import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'config/routes/routes.dart';
import 'config/theme/app_theme.dart';
import 'features/auth/presentation/auth_bloc/auth_bloc.dart';
import 'features/login/data/repositories/login_repositories_impl.dart';
import 'features/login/presentation/login_bloc/login_bloc.dart';
import 'core/usecases/listen_to_connectivity.dart';
import 'features/signup/data/repositories/signup_repositories_impl.dart';
import 'features/signup/presentation/signup_bloc/signup_bloc.dart';

void main() {
  final loginRepositoriesImpl = LoginRepositoriesImpl();
  final signupRepositoriesImpl = SignupRepositoriesImpl();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => AuthBloc()..add(AppStarted()),
        ),
        BlocProvider<LoginBloc>(
          create: (context) {
            final authBloc = BlocProvider.of<AuthBloc>(context);
            return LoginBloc(
              loginRepositoriesImpl: loginRepositoriesImpl,
              authBloc: authBloc,
            );
          },
        ),
        BlocProvider<SignupBloc>(
          create: (context) {
            final authBloc = BlocProvider.of<AuthBloc>(context) ;
            return SignupBloc(
              signupRepositoriesImpl: signupRepositoriesImpl,
              authBloc: authBloc,
            );
          },
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final rootNavigatorKey = GlobalKey<NavigatorState>();
    final scaffoldKey = GlobalKey<ScaffoldMessengerState>();

    listenToConnectivity(
      scaffoldKey: scaffoldKey,
      context: context,
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      scaffoldMessengerKey: scaffoldKey,
      title: 'Boiler Plate',
      routerConfig: AppRouter(
        scaffoldMessengerKey: scaffoldKey,
        rootNavigatorKey: rootNavigatorKey,
      ).router,
      theme: AppTheme().lightTheme,
    );
  }
}
