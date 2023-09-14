// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../config/theme/colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/styles.dart';
import '../../../../core/usecases/calculate_size.dart';

class CustomTextfield extends StatefulWidget {
  final TextEditingController controller;
  final String text;
  final BuildContext context;
  bool isHidden;
  bool isPassword;

  CustomTextfield({
    Key? key,
    required this.controller,
    required this.text,
    required this.context,
    this.isHidden = false,
    this.isPassword = false,
  }) : super(key: key);

  @override
  State<CustomTextfield> createState() => _CustomTextfieldState();
}

class _CustomTextfieldState extends State<CustomTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: widget.isHidden,
      style: TextStyle(
          color: ColorsConst.textColor,
          fontSize: calculateSize(context, normalText)),
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: SizedBox(
                  width: 50,
                  child: Icon(
                    !widget.isHidden
                        ? Icons.remove_red_eye
                        : Icons.remove_red_eye_outlined,
                    color: ColorsConst.darkgreyColor,
                    size: calculateSize(
                      context,
                      20,
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    widget.isHidden = !widget.isHidden;
                  });
                },
              )
            : null,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 16.0,
        ),
        labelText: widget.text,
        labelStyle: TextStyle(fontSize: calculateSize(context, normalText)),
        filled: true,
        fillColor: ColorsConst.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: ColorsConst.primaryColor, width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: ColorsConst.primaryColor, width: 2.0),
        ),
      ),
    );
  }
}
