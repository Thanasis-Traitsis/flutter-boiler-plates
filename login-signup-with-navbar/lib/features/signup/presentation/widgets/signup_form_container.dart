import 'package:flutter/material.dart';

import '../../../login/presentation/widgets/form_button.dart';
import 'signup_textfields_container.dart';

Widget SignupFormContainer({
  required BuildContext context,
  required TextEditingController emailController,
  required TextEditingController passwordController,
  required TextEditingController confirmPasswordController,
  required Function function,
}) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SignupTextfieldsContainer(
          context: context,
          emailController: emailController,
          passwordController: passwordController,
          confirmpasswordController: confirmPasswordController,
        ),
        FormButton(
          context: context,
          function: function,
          text: 'Sign up',
        ),
      ],
    ),
  );
}
