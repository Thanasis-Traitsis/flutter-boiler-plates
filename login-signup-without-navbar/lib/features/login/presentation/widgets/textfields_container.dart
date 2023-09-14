import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/theme/colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/styles.dart';
import '../../../../core/usecases/calculate_size.dart';
import '../login_bloc/login_bloc.dart';
import 'custom_textfield.dart';

Widget TextfieldsContainer({
  required BuildContext context,
  required TextEditingController emailController,
  required TextEditingController passwordController,
}) {
  return BlocBuilder<LoginBloc, LoginState>(
    builder: (context, state) {
      return Column(
        children: [
          CustomTextfield(
            controller: emailController,
            text: 'Email',
            context: context,
          ),
          const SizedBox(
            height: gap * 2,
          ),
          CustomTextfield(
            controller: passwordController,
            text: 'Password',
            context: context,
            isHidden: true,
            isPassword: true,
          ),
          Container(
            height: gap * 6,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Text(
              state is LoginFailure ? state.message : '',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: calculateSize(
                  context,
                  normalText,
                ),
                color: ColorsConst.errorColor,
              ),
            ),
          ),
        ],
      );
    },
  );
}
