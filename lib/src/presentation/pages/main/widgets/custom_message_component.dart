import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/icon_set.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomMessageComponent extends StatelessWidget {
  const CustomMessageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // 60.horizontalSpace,
        DecoratedBox(
          decoration: const ShapeDecoration(
            color: Color(0xFF3BEC78),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: 8.h, left: 16.w, right: 12.w, bottom: 8.h),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 220.w, minWidth: 30.w),
                  child: Text(
                    'Уже сделал? qewq  e \n zqweqwewewq \n'.trim(),
                    maxLines: 10,
                    style: const TextStyle(
                      color: Color(0xFF00521B),
                      fontSize: 14,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6.h, right: 12.w, bottom: 6.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '21:41',
                      style: TextStyle(
                        color: const Color(0xFF00521B).withOpacity(0.8),
                        fontSize: 12,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    4.horizontalSpace,
                    SvgPicture.asset(AppIconsPath.check)
                  ],
                ),
              ),
            ],
          ),
        ),
        DecoratedBox(
          decoration: const BoxDecoration(
            color: Color(0xFF3BEC78),
          ),
          child: DecoratedBox(
              decoration: ShapeDecoration(
                color: Style.backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(21.r),
                  ),
                ),
              ),
              child: SizedBox(
                width: 10.w,
                height: 21.h,
              )),
        ),
      ],
    );
  }
}
