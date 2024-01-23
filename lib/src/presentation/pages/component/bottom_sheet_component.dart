import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/infrastructure/models/chat_model.dart';
import 'package:flutter_application_messege/src/infrastructure/models/event_model.dart';
import 'package:flutter_application_messege/src/presentation/home_bloc/home_bloc.dart';
import 'package:flutter_application_messege/src/presentation/pages/component/custom_text_field.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/icon_set.dart';
import 'package:flutter_application_messege/src/presentation/util/styles/style.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomSheetTextFieldComponent extends StatefulWidget {
  const BottomSheetTextFieldComponent(
      {super.key, required this.onPressed, required this.chatModel});
  final Function() onPressed;
  final ChatModel? chatModel;

  @override
  State<BottomSheetTextFieldComponent> createState() =>
      _BottomSheetTextFieldComponentState();
}

class _BottomSheetTextFieldComponentState
    extends State<BottomSheetTextFieldComponent> {
  late FocusNode _node;
  bool _focused = false;
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _node = FocusNode(debugLabel: 'Text Field');
    _node.addListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    if (_node.hasFocus != _focused) {
      setState(() {
        _focused = _node.hasFocus;
      });
    }
  }

  @override
  void dispose() {
    _node.removeListener(_handleFocusChange);
    _node.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Style.white,
            border:
                Border(top: BorderSide(color: Style.dividerColor, width: 1.h))),
        child: Padding(
          padding: EdgeInsets.only(
              top: 14.h,
              left: 20.w,
              right: 20.w,
              bottom: 14.h +
                  (MediaQuery.of(context).viewInsets.bottom < 30.h
                      ? 30.h
                      : 0.h)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 42.h,
                width: 42.h,
                child: GestureDetector(
                  onTap: () {
                    print("object");
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Style.dividerColor,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        AppIconsPath.attach,
                        height: 24.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
              8.horizontalSpace,
              Expanded(
                  child: SizedBox(
                      height: 42.h,
                      child: CustomTextField(
                        controller: _controller,
                        hintText: "Сообщение",
                        onChanged: (value) {
                          setState(() {});
                        },
                        focusNode: _node,
                      ))),
              8.horizontalSpace,
              SizedBox(
                height: 42.h,
                width: 42.h,
                child: GestureDetector(
                  onTap: () {
                    if (_focused) {
                      _node.unfocus();
                    }
                    if (_controller.text.isNotEmpty) {
                      context.read<HomeBloc>().add(HomeEvent.sendMessage(
                          MessageModel(
                              chatId: widget.chatModel?.chatId ?? "0",
                              title: _controller.text,
                              userId: widget.chatModel?.firstId ?? "0",
                              dateTime: DateTime.now(),
                              isloked: false)));
                      _controller.clear();
                    }
                  },
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: _controller.text.isNotEmpty
                          ? Style.greenMessageFon
                          : Style.dividerColor,
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        _controller.text.isNotEmpty
                            ? AppIconsPath.sendMessage
                            : AppIconsPath.microphone,
                        height: 24.h,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
