import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_messege/src/presentation/pages/component/input_formaters.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldInput extends StatelessWidget {
  const CustomTextFieldInput({
    super.key,
    this.dateFormatter,
    required this.controller,
    required this.validateError,
    required this.labelText,
    this.lentEr = 3,
    this.keyboardType,
  });

  final bool validateError;
  final TextEditingController controller;
  final List<TextInputFormatter>? dateFormatter;
  final String labelText;
  final int lentEr;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: validateError && controller.text.length < lentEr
              ? Style.red.withOpacity(0.15)
              : Style.greyTextField),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
      child: TextFormField(
        inputFormatters: dateFormatter,
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: Style.black,
        decoration: InputDecoration(
            border: InputBorder.none,
            labelStyle: Style.medium20(color: Style.grey2Text),
            labelText: labelText,
            errorMaxLines: 1),
      ),
    );
  }
}

class CustomTextFieldInputForEmail extends StatelessWidget {
  const CustomTextFieldInputForEmail({
    super.key,
    this.dateFormatter,
    required this.controller,
    required this.validateError,
    required this.labelText,
    this.lentEr = 3,
    this.keyboardType,
  });

  final bool validateError;
  final TextEditingController controller;
  final List<TextInputFormatter>? dateFormatter;
  final String labelText;
  final int lentEr;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: (validateError && !controller.text.isValidEmail())
              ? Style.red.withOpacity(0.15)
              : Style.greyTextField),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 0.h),
      child: TextFormField(
        inputFormatters: dateFormatter,
        controller: controller,
        keyboardType: keyboardType,
        cursorColor: Style.black,
        decoration: InputDecoration(
            border: InputBorder.none,
            labelStyle: Style.medium20(color: Style.grey2Text),
            labelText: labelText,
            errorMaxLines: 1),
      ),
    );
  }
}
