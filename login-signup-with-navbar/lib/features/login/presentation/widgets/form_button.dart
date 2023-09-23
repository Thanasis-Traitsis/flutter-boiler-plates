import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/theme/colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/usecases/calculate_size.dart';
import '../login_bloc/login_bloc.dart';

Widget FormButton({
  required BuildContext context,
  required Function function,
  required String text,
}) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        function();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            width: 20,
            height: 20,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: calculateSize(
                context,
                buttonText,
              ),
            ),
          ),
          BlocBuilder<LoginBloc, LoginState>(
            builder: (context, state) {
              return SizedBox(
                width: 20,
                height: 20,
                child: state is LoginLoading
                    ? CircularProgressIndicator.adaptive(
                        backgroundColor: ColorsConst.white,
                      )
                    : null,
              );
            },
          ),
        ],
      ),
    ),
  );
}
