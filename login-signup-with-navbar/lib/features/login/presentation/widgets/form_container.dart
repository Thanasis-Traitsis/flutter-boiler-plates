import 'package:flutter/material.dart';

import 'form_button.dart';
import 'textfields_container.dart';

Widget FormContainer({
  required BuildContext context,
  required TextEditingController emailController,
  required TextEditingController passwordController,
  required Function function,
}) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextfieldsContainer(
          context: context,
          emailController: emailController,
          passwordController: passwordController,
        ),
        FormButton(
          context: context,
          function: function,
          text: 'Login',
        ),
      ],
    ),
  );
}
