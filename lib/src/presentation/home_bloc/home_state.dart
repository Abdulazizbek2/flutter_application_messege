part of 'home_bloc.dart';

@immutable
@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState({
    @Default(null) Map<String, List<MessageModel>>? messages,
    @Default(null) List<ChatModel>? chats,
  }) = _HomeState;
}
