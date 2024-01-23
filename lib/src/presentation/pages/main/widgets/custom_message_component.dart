import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/infrastructure/models/event_model.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/icon_set.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomMessageComponent extends StatelessWidget {
  const CustomMessageComponent(
      {super.key, required this.messages, required this.date, this.personId});
  final List<MessageModel>? messages;
  final String? date;
  final String? personId;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        20.verticalSpace,
        Row(
          children: [
            Expanded(
                child: Divider(
              indent: 6.w,
              endIndent: 10.w,
              height: 1.sp,
              color: Style.dividerColor,
              thickness: 1.sp,
            )),
            Text(
              messages?[0].dateTime?.day == DateTime.now().day &&
                      messages?[0].dateTime?.month == DateTime.now().month &&
                      messages?[0].dateTime?.year == DateTime.now().year
                  ? "Сегодня"
                  : date ?? '',
              maxLines: 10,
              style: Style.regular14(
                color: Style.textBlack21B,
                size: 14.sp,
              ),
            ),
            Expanded(
                child: Divider(
              endIndent: 6.w,
              indent: 10.w,
              height: 1.sp,
              color: Style.dividerColor,
              thickness: 1.sp,
            )),
          ],
        ),
        23.verticalSpace,
        ListView.separated(
          separatorBuilder: (context, index) => 20.verticalSpace,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: messages?.length ?? 0,
          itemBuilder: (context, index) {
            return personId == messages?[index].userId
                ? CustomMessageRightComponent(message: messages?[index])
                : CustomMessageLeftComponent(message: messages?[index]);
          },
        )
      ],
    );
  }
}

class CustomMessageRightComponent extends StatelessWidget {
  const CustomMessageRightComponent({super.key, required this.message});
  final MessageModel? message;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        // 60.horizontalSpace,
        DecoratedBox(
          decoration: const ShapeDecoration(
            color: Style.greenMessageFon, // Color(0xFF3BEC78),
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
                    (message?.title ?? '').trim(),
                    maxLines: 10,
                    style: Style.regular14(
                      color: Style.textBlack21B,
                      size: 14.sp,
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
                      "${message?.dateTime?.hour}:${message?.dateTime?.minute}",
                      style: Style.regular14(
                        color: Style.textBlack21B.withOpacity(0.8),
                        size: 12.sp,
                      ),
                    ),
                    4.horizontalSpace,
                    SvgPicture.asset((message?.isloked ?? false)
                        ? AppIconsPath.doubleCheck
                        : AppIconsPath.check)
                  ],
                ),
              ),
            ],
          ),
        ),
        DecoratedBox(
          decoration: const BoxDecoration(
            color: Style.greenMessageFon,
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

class CustomMessageLeftComponent extends StatelessWidget {
  const CustomMessageLeftComponent({super.key, required this.message});
  final MessageModel? message;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        DecoratedBox(
          decoration: const BoxDecoration(
            color: Style.dividerColor,
          ),
          child: DecoratedBox(
              decoration: ShapeDecoration(
                color: Style.backgroundColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(21.r),
                  ),
                ),
              ),
              child: SizedBox(
                width: 10.w,
                height: 21.h,
              )),
        ),
        DecoratedBox(
          decoration: const ShapeDecoration(
            color: Style.dividerColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
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
                    (message?.title ?? '').trim(),
                    maxLines: 10,
                    style: Style.regular14(
                      color: Style.textBlack33E,
                      size: 14.sp,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 6.h, right: 9.w, bottom: 6.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "${message?.dateTime?.hour}:${message?.dateTime?.minute}",
                      style: Style.regular14(
                        color: Style.textBlack33E.withOpacity(0.8),
                        size: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
