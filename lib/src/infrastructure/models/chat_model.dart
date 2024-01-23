import 'package:flutter_application_messege/src/infrastructure/models/color_enum.dart';
import 'package:flutter_application_messege/src/infrastructure/models/event_model.dart';

class ChatModel {
  final String? chatId;
  final String? personName;
  final String? firstId;
  final String? secondId;
  final MessageModel? lastMessaage;
  final String? color;

  ChatModel({
    this.chatId,
    this.personName,
    this.firstId,
    this.secondId,
    this.lastMessaage,
    this.color,
  });

  ChatModel copyWith({
    String? chatId,
    String? personName,
    String? firstId,
    String? secondId,
    MessageModel? lastMessaage,
    String? color,
  }) =>
      ChatModel(
        chatId: chatId ?? this.chatId,
        personName: personName ?? this.personName,
        firstId: firstId ?? this.firstId,
        secondId: secondId ?? this.secondId,
        lastMessaage: lastMessaage ?? this.lastMessaage,
        color: color ?? this.color,
      );
}

List<ChatModel> chatss = [
  ChatModel(
    chatId: "1",
    personName: "Виктор Власов",
    firstId: "1",
    secondId: "2",
    color: ColorAcount.green.toString(),
  ),
  ChatModel(
    chatId: "2",
    personName: "Саша Алексеев",
    firstId: "1",
    secondId: "3",
    color: ColorAcount.orange.toString(),
  ),
  ChatModel(
    chatId: "3",
    personName: "Пётр Жаринов",
    firstId: "1",
    secondId: "4",
    color: ColorAcount.blue.toString(),
  ),
  ChatModel(
    chatId: "1",
    personName: "Алина Жукова",
    firstId: "2",
    secondId: "1",
    color: ColorAcount.orange.toString(),
  ),
];
