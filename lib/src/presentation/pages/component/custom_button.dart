import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'animation_effect.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color backgroundColor;
  final String title;
  final Color titleColor;
  final bool isDisabled;
  final double borderWidth;
  final double verticalPadding;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.isDisabled = false,
    required this.title,
    this.titleColor = const Color(0xffFFFFFF),
    this.backgroundColor = const Color(0xff1D1D1D),
    this.borderWidth = 0.5,
    this.verticalPadding = 14,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimationButtonEffect(
      disabled: isDisabled,
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            border: Border.all(
              color: isDisabled ? Style.white : Style.borderColor,
              width: borderWidth.h,
            ),
            color: isDisabled ? Style.grey : backgroundColor,
            boxShadow: isDisabled
                ? null
                : const [
                    // Style.blueIconShadow,
                  ]),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: verticalPadding.h, horizontal: 8.w),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: Style.medium14(
              size: 16.sp,
              color: isDisabled ? Style.primary : titleColor,
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, this.onPressed});

  final String? text;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Style.blueText,
          padding: EdgeInsets.zero,
          textStyle: Style.medium14(
            size: 14.sp,
          ),
        ),
        onPressed: onPressed ?? () {},
        child: Text(
          text ?? "",
        ));
  }
}
