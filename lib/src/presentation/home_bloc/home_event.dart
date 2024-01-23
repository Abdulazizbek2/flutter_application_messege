part of 'home_bloc.dart';

@freezed
abstract class HomeEvent with _$HomeEvent {
  const factory HomeEvent.getChats() = _GetChats;
  const factory HomeEvent.getMessagesInChat(String chatId) = _GetMessagesInChat;
  const factory HomeEvent.sendMessage(MessageModel messageModel) = _SendMessage;
  //del
}
