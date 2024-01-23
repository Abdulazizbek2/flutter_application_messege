import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/infrastructure/models/chat_model.dart';
import 'package:flutter_application_messege/src/infrastructure/models/color_enum.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileItem extends StatelessWidget {
  const CustomProfileItem(
      {super.key, required this.chatModel, required this.onTap});

  final ChatModel? chatModel;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    List<String> listName = chatModel?.personName?.split(' ') ?? [];
    String avatarText = (listName.isNotEmpty && listName[0].isNotEmpty
            ? listName[0][0]
            : '') +
        (listName.length >= 2 && listName[1].isNotEmpty ? listName[1][0] : '');
    return GestureDetector(
      onTap: onTap,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Style.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, right: 12.w, bottom: 10.h),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          avatarText.toUpperCase(), // 'ВВ',
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
                    child: SizedBox(
                      height: 50.w,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            chatModel?.personName ?? '',
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: Style.medium14(
                              size: 15.sp,
                            ),
                          ),
                          Row(
                            children: [
                              if (chatModel?.lastMessaage?.userId ==
                                  chatModel?.firstId)
                                Text(
                                  'Вы:',
                                  textAlign: TextAlign.center,
                                  style: Style.medium14(
                                      size: 12.sp, color: Style.textBlack33E),
                                ),
                              if (chatModel?.lastMessaage?.userId ==
                                  chatModel?.firstId)
                                4.horizontalSpace,
                              Expanded(
                                child: Text(
                                  chatModel?.lastMessaage?.title ?? '',
                                  maxLines: 1,
                                  textAlign: TextAlign.left,
                                  style: Style.medium14(
                                      size: 12.sp, color: Style.greyTextA90),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  12.horizontalSpace,
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      dateTimeToString(chatModel?.lastMessaage?.dateTime),
                      textAlign: TextAlign.right,
                      style:
                          Style.medium14(size: 12.sp, color: Style.greyTextA90),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.sp,
              color: Style.dividerColor,
              thickness: 1.sp,
            )
          ],
        ),
      ),
    );
  }
}

String dateTimeToString(DateTime? dateTime) {
  DateTime now = DateTime.now();
  if (dateTime?.day == now.day &&
      dateTime?.month == now.month &&
      dateTime?.year == now.year) {
    if (now.hour - (dateTime?.hour ?? 2) >= 0) {
      int minutt = now.minute - (dateTime?.minute ?? 0);
      if (minutt == 0) return 'Только что';
      return '$minutt минуты назад';
    }
    return '${dateTime?.hour}:${dateTime?.minute}';
  } else if (dateTime?.day == (DateTime.now().day - 1) &&
      dateTime?.month == DateTime.now().month &&
      dateTime?.year == DateTime.now().year) {
    return 'Вчера';
  } else {
    return '${dateTime?.day}.${dateTime?.month}.${dateTime?.year.toString().substring(2)}';
  }
}
