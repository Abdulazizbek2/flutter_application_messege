import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/presentation/pages/component/custom_button.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetButtonComponent extends StatelessWidget {
  const BottomSheetButtonComponent(
      {super.key, required this.onPressed, required this.title});
  final Function() onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: Style.white,
          border:
              Border(top: BorderSide(color: Style.dividerColor, width: 1.h))),
      child: Padding(
        padding:
            EdgeInsets.only(top: 13.h, left: 16.w, right: 16.w, bottom: 28.h),
        child: CustomButton(
          onPressed: onPressed,
          title: title,
          backgroundColor: Style.coursorColor,
        ),
      ),
    );
  }
}
