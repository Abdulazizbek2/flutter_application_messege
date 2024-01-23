import 'dart:async';

import 'package:flutter_application_messege/src/infrastructure/models/chat_model.dart';
import 'package:flutter_application_messege/src/infrastructure/models/event_model.dart';
import 'package:flutter_application_messege/src/infrastructure/repozitory/db_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _HomeState()) {
    on<_GetChats>(_getChats);
    on<_GetMessagesInChat>(_getMessagesInChat);
    on<_SendMessage>(_sendMessage);
  }

  FutureOr<void> _sendMessage(
    _SendMessage event,
    Emitter<HomeState> emit,
  ) async {
    print("sended message: ${event.messageModel.dateTime}");
    await DBRepozitory.addNewMessage(event.messageModel);
    add(HomeEvent.getMessagesInChat(event.messageModel.chatId ?? "0"));
    add(const HomeEvent.getChats());
  }

  Future<void> _getChats(
    _GetChats event,
    Emitter<HomeState> emit,
  ) async {
    print("getchat");
    print(state.chats?[0].lastMessaage?.dateTime);
    List<MessageModel> evenList = await DBRepozitory.getAllMessages();
    List<ChatModel> chatslis = [];
    for (var element in chatss) {
      chatslis.add(element.copyWith(
          lastMessaage: evenList.firstWhere(
              (element2) => element2.chatId == element.chatId,
              orElse: () => MessageModel(chatId: element.chatId))));
    }
    chatslis.sort((a, b) =>
        a.lastMessaage?.dateTime
            ?.compareTo(b.lastMessaage?.dateTime ?? DateTime.now()) ??
        -1);
    emit(state.copyWith(chats: chatslis.reversed.toList()));
  }

  FutureOr<void> _getMessagesInChat(
      _GetMessagesInChat event, Emitter<HomeState> emit) async {
    Map<String, List<MessageModel>> messages =
        await DBRepozitory.getByChatId(event.chatId);
    return emit(state.copyWith(messages: messages));
  }
}
