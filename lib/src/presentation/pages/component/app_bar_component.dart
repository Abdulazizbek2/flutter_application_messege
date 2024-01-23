import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/infrastructure/models/chat_model.dart';
import 'package:flutter_application_messege/src/infrastructure/models/color_enum.dart';
import 'package:flutter_application_messege/src/presentation/pages/component/animation_effect.dart';
import 'package:flutter_application_messege/src/presentation/pages/component/custom_text_field.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/icon_set.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent(
      {super.key, required this.title, this.automaticallyImplyLeading = true});
  final String? title;
  final bool automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Style.white,
      surfaceTintColor: Style.white,
      title: Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Text(
          title ?? "",
          textAlign: TextAlign.start,
          style: Style.semiBold16(
            color: Style.black,
            size: 30.sp,
          ),
        ),
      ),
      centerTitle: false,
      automaticallyImplyLeading: automaticallyImplyLeading,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(120.h),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 24.h),
              child: CustomTextField(
                hintText: "Поиск",
                padding: EdgeInsets.zero,
                prefixIcon: SvgPicture.asset(
                  AppIconsPath.search,
                  width: 24.w,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.r),
                  borderSide:
                      const BorderSide(color: Color(0xFFEDF2F6), width: 0),
                ),
                enableBorderColor: const Color(0xFFEDF2F6),
                fillColor: const Color(0xFFEDF2F6),
              ),
            ),
            Divider(
              color: Style.dividerColor,
              thickness: 1.sp,
              height: 1.sp,
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(122.h);
}

class ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final ChatModel? chatModel;
  final DateTime? dateOnline;
  final bool? isBorder;

  const ChatAppBar({
    super.key,
    this.chatModel,
    this.dateOnline,
    this.isBorder = true,
  });

  @override
  Widget build(BuildContext context) {
    List<String> listName = chatModel?.personName?.split(' ') ?? [];
    String avatarText = (listName.isNotEmpty && listName[0].isNotEmpty
            ? listName[0][0]
            : '') +
        (listName.length >= 2 && listName[1].isNotEmpty ? listName[1][0] : '');
    return Container(
      height: kToolbarHeight * 3,
      decoration: BoxDecoration(
        color: Style.transparent,
        border: Border(
          bottom: BorderSide(
              color: isBorder ?? false ? Style.dividerColor : Style.transparent,
              width: 1.sp),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
            left: 20.w,
            top: MediaQuery.of(context).padding.top,
            right: 20.w,
            bottom: 12.h),
        child: Row(
          children: [
            AnimationButtonEffect(
              onTap: () {
                Navigator.pop(context);
              },
              child: SizedBox(
                height: 36.h,
                width: 36.w,
                child: Center(
                  child: Icon(
                    Platform.isAndroid
                        ? Icons.arrow_back
                        : Icons.arrow_back_ios,
                    color: Style.text,
                  ),
                ),
              ),
            ),
            6.horizontalSpace,
            DecoratedBox(
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                  begin: const Alignment(0.00, -1.00),
                  end: const Alignment(0, 1),
                  colors: getcolor(chatModel?.color ?? ""),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(34),
                ),
              ),
              child: SizedBox(
                width: 50.w,
                height: 50.w,
                child: Center(
                  child: Text(
                    avatarText.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: Style.bold20(
                      color: Colors.white,
                      size: 20.sp,
                    ),
                  ),
                ),
              ),
            ),
            12.horizontalSpace,
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    chatModel?.personName ?? '',
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    style: Style.semiBold14(
                      size: 15.sp,
                    ),
                  ),
                  Text(
                    "В сети",
                    maxLines: 1,
                    textAlign: TextAlign.left,
                    style:
                        Style.medium14(size: 12.sp, color: Style.greyTextA90),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(70);
}
