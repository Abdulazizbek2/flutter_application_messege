import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomProfileItem extends StatelessWidget {
  const CustomProfileItem(
      {super.key, this.name, this.subTitle, this.date, required this.isMeSend});

  final String? name;
  final String? subTitle;
  final String? date;
  final bool isMeSend;

  @override
  Widget build(BuildContext context) {
    List<String> listName = name?.split(' ') ?? [];
    String avatarText = (listName.isNotEmpty && listName[0].isNotEmpty
            ? listName[0][0]
            : '') +
        (listName.length >= 2 && listName[1].isNotEmpty ? listName[1][0] : '');
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 10.h, right: 12.w, bottom: 10.h),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DecoratedBox(
                decoration: ShapeDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment(0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Color(0xFF1EDA5E), Color(0xFF31C764)],
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
                      avatarText, // 'ВВ',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w700,
                        height: 0,
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
                        name ?? 'Виктор Власов',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                          height: 0,
                        ),
                      ),
                      Row(
                        children: [
                          if (isMeSend)
                            const Text(
                              'Вы:',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF2B333E),
                                fontSize: 12,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          if (isMeSend) 4.horizontalSpace,
                          const Expanded(
                            child: Text(
                              'Уже сделал?',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                color: Color(0xFF5D7A90),
                                fontSize: 12,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                height: 0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              12.horizontalSpace,
              const Align(
                alignment: Alignment.bottomRight,
                // height: double.infinity,
                child: Text(
                  'Вчера',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF5D7A90),
                    fontSize: 12,
                    fontFamily: 'Gilroy',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
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
    );
  }
}
