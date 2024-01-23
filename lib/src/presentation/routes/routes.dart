import 'package:flutter/material.dart';
import 'package:flutter_application_messege/src/infrastructure/models/chat_model.dart';
import 'package:flutter_application_messege/src/presentation/home_bloc/home_bloc.dart';
import 'package:flutter_application_messege/src/presentation/pages/chats/chat_page.dart';
import 'package:flutter_application_messege/src/presentation/pages/main/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  static MaterialPageRoute main() => MaterialPageRoute(
        builder: (_) => BlocProvider(
          create: (context) => HomeBloc()..add(const HomeEvent.getChats()),
          lazy: false,
          child: const MainPage(),
        ),
      );

  static MaterialPageRoute chats({
    required ChatModel? chatModel,
    required BuildContext context,
  }) =>
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: context.read<HomeBloc>()
            ..add(HomeEvent.getMessagesInChat(chatModel?.chatId ?? "0")),
          child: ChatsPage(chatModel: chatModel),
        ),
      );
}
