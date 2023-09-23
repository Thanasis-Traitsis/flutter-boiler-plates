import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/styles.dart';
import '../../../../core/utils/routes_utils.dart';
import '../../../../core/widgets/scaffold_message.dart';
import '../../../login/presentation/widgets/text_clickable.dart';
import '../signup_bloc/signup_bloc.dart';
import '../widgets/signup_form_container.dart';

class SignupScreen extends StatelessWidget {
  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey;

  const SignupScreen({
    Key? key,
    required this.scaffoldMessengerKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

    BlocProvider.of<SignupBloc>(context).add(
      SignupInitialize(),
    );

    onSignupButtonPressed() {
      BlocProvider.of<SignupBloc>(context).add(
        SignupButtonPressed(
          body: {
            "email": emailController.text,
            "password": passwordController.text,
          },
          confirm: confirmPasswordController.text,
        ),
      );
    }

    return BlocListener<SignupBloc, SignupState>(
      listener: (context, state) {
        if (state is SignupFailure) {
          scaffoldMessengerKey.currentState?.showSnackBar(
            ScaffoldMessage(
              context: context,
              message: state.message,
              onTap: () {
                scaffoldMessengerKey.currentState?.hideCurrentSnackBar();
              },
            ),
          );
        } else if (state is SignupSuccessful) {
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
                SignupFormContainer(
                  context: context,
                  emailController: emailController,
                  passwordController: passwordController,
                  confirmPasswordController: confirmPasswordController,
                  function: () {
                    onSignupButtonPressed();
                  },
                ),
                const SizedBox(
                  height: gap * 6,
                ),
                TextClickale(
                    context: context,
                    text: 'Already have an account? ',
                    clickableText: 'Sign in!',
                    function: () {
                      context.pop();
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
