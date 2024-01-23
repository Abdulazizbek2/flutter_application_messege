import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/infrastructure/models/chat_model.dart';
import 'package:flutter_application_messege/src/presentation/home_bloc/home_bloc.dart';
import 'package:flutter_application_messege/src/presentation/pages/component/app_bar_component.dart';
import 'package:flutter_application_messege/src/presentation/pages/component/bottom_sheet_component.dart';
import 'package:flutter_application_messege/src/presentation/pages/main/widgets/custom_message_component.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatsPage extends StatelessWidget {
  const ChatsPage({super.key, required this.chatModel});
  final ChatModel? chatModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          appBar: ChatAppBar(
            chatModel: chatModel,
            dateOnline: DateTime.now(),
          ),
          body: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                200.verticalSpace,
                ListView.builder(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    shrinkWrap: true,
                    reverse: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.messages?.length ?? 0,
                    itemBuilder: (context, index) {
                      return CustomMessageComponent(
                        messages: state.messages?.values.toList()[index],
                        date: state.messages?.keys.toList()[index],
                        personId: chatModel?.firstId,
                      );
                    }),
                (118 + (MediaQuery.of(context).viewInsets.bottom < 30 ? 0 : 8))
                    .verticalSpace,
              ],
            ),
          ),
          bottomSheet: BottomSheetTextFieldComponent(
            onPressed: () {},
            chatModel: chatModel,
          ),
        );
      },
    );
  }
}
