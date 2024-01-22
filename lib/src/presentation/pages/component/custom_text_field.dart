import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final String title;
  final String subTitle;
  final String hintText;
  final String titleHintText;
  final bool isEmail;
  final bool isPassword;
  final bool obscureText;
  final int? minLines;
  final int? maxLines;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final void Function()? onsuffixIconPressed;
  final void Function()? onprefixIconPressed;
  final void Function()? onPressed;
  final TextInputType keyboardType;
  final String? error;
  final int? maxLength;
  final TextEditingController? controller;
  final List<TextInputFormatter>? formatter;
  final TextAlign textAlign;
  final bool readOnly;
  final bool? expands;
  final double? borderWidth;
  final double? borderRadius;
  final ValueChanged<String>? onChanged;
  final FocusNode? focusNode;
  final Color? fillColor;
  final Color? enableBorderColor;
  final InputBorder? border;
  final EdgeInsets? padding;
  final String? Function(String? value)? validator;

  const CustomTextField({
    super.key,
    this.onPressed,
    this.border,
    this.expands,
    this.enableBorderColor,
    this.onsuffixIconPressed,
    this.onprefixIconPressed,
    this.formatter,
    this.borderWidth = 1.5,
    this.borderRadius,
    this.fillColor,
    this.controller,
    this.hintText = '',
    this.title = '',
    this.subTitle = '',
    this.isPassword = false,
    this.minLines = 1,
    this.maxLines = 2,
    this.isEmail = false,
    this.keyboardType = TextInputType.text,
    this.suffixIcon,
    this.prefixIcon,
    this.maxLength,
    this.obscureText = false,
    this.error,
    this.titleHintText = '',
    this.readOnly = false,
    this.onChanged,
    this.focusNode,
    this.textAlign = TextAlign.start,
    this.padding,
    this.validator,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding ?? EdgeInsets.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.title.isNotEmpty
              ? Text(
                  widget.title,
                  style: Style.medium16(
                    color: widget.error == null ? Style.text : Style.error,
                  ),
                )
              : const SizedBox(),
          widget.title.isNotEmpty ? SizedBox(height: 6.h) : const SizedBox(),
          widget.titleHintText.isNotEmpty
              ? Text(
                  widget.titleHintText,
                  style: Style.medium16(
                    color: Style.grey,
                  ),
                )
              : const SizedBox(),
          widget.titleHintText.isNotEmpty
              ? SizedBox(height: 6.h)
              : const SizedBox(),
          TextFormField(
            expands: widget.expands ?? false,
            onTap: widget.onPressed,
            textInputAction: TextInputAction.done,
            focusNode: widget.focusNode,
            maxLength: widget.maxLength,
            onChanged: widget.onChanged,
            readOnly: widget.readOnly,
            textAlign: widget.textAlign,
            inputFormatters: widget.formatter,
            minLines: widget.minLines,
            maxLines: widget.maxLines,
            controller: widget.controller,
            style: Style.medium16(color: Style.text),
            obscureText: widget.obscureText,
            keyboardType: widget.keyboardType,
            validator: widget.validator,
            decoration: InputDecoration(
              counterText: widget.maxLength == 500 ? null : '',
              suffixIcon: widget.suffixIcon != null
                  ? IconButton(
                      icon: widget.suffixIcon!,
                      onPressed: widget.onsuffixIconPressed ?? () {})
                  : null,
              prefixIcon: widget.prefixIcon != null
                  ? IconButton(
                      icon: widget.prefixIcon!,
                      onPressed: widget.onprefixIconPressed ?? () {})
                  : null,
              focusColor: Style.secondary,
              fillColor: widget.fillColor ?? Style.transparent,
              // hoverColor: colors.white,
              filled: true,
              border: widget.border ??
                  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.r),
                    borderSide:
                        const BorderSide(color: Style.primary, width: 1),
                  ),
              enabledBorder: widget.border ??
                  OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(widget.borderRadius ?? 10.r),
                    borderSide: BorderSide(
                        color: widget.enableBorderColor ?? Style.borderColor,
                        width: widget.borderWidth ?? 1),
                  ),
              focusedBorder: widget.border ??
                  OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(widget.borderRadius ?? 10.r),
                    borderSide: BorderSide(
                        color: Style.primary, width: widget.borderWidth ?? 1),
                  ),
              hintText: widget.hintText,
              hintStyle: Style.medium16(
                  color: Style.black.withOpacity(0.5), size: 14.sp),
              errorText: widget.error,
              errorStyle: Style.medium16(color: Style.error),
              contentPadding:
                  EdgeInsets.only(left: 16.w, top: 12.h, right: 12.w),
            ),
          ),
          widget.subTitle.isNotEmpty ? SizedBox(height: 6.h) : const SizedBox(),
          widget.subTitle.isNotEmpty
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      widget.subTitle,
                      style: Style.medium16(
                          color: widget.error == null
                              ? Style.bodyText
                              : Style.error,
                          size: 12.sp),
                    ),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
