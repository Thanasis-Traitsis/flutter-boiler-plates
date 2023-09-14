import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/styles.dart';
import '../../../../core/utils/routes_utils.dart';
import '../../../../core/widgets/scaffold_message.dart';
import '../login_bloc/login_bloc.dart';
import '../widgets/form_container.dart';
import '../widgets/text_clickable.dart';

class LoginScreen extends StatelessWidget {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  const LoginScreen({
    Key? key,
    required this.scaffoldMessengerKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    BlocProvider.of<LoginBloc>(context).add(
      LoginInitialize(),
    );

    onLoginButtonPressed() {
      BlocProvider.of<LoginBloc>(context).add(
        LoginButtonPressed(
          body: {
            "email": emailController.text,
            "password": passwordController.text,
          },
        ),
      );
    }

    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          scaffoldMessengerKey.currentState?.showSnackBar(
            ScaffoldMessage(
              context: context,
              message: state.message,
              onTap: () {
                scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
              },
            ),
          );
        } else if (state is LoginSuccessful) {
          context.go(PAGES.auth.screenPath);
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: screenPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FormContainer(
                  context: context,
                  emailController: emailController,
                  passwordController: passwordController,
                  function: () {
                    onLoginButtonPressed();
                  },
                ),
                const SizedBox(
                  height: gap * 6,
                ),
                TextClickale(
                    context: context,
                    text: "Don't have an account? ",
                    clickableText: 'Sign up!',
                    function: () {
                      context.pushNamed(
                        PAGES.signup.screenName,
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
