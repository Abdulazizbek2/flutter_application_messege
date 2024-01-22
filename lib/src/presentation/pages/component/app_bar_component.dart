import 'package:flutter/material.dart';
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
        padding: EdgeInsets.only(left: 10.h),
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
