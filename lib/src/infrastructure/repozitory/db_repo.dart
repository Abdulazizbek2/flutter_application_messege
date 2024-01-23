import 'package:flutter_application_messege/src/infrastructure/models/event_model.dart';
import 'package:flutter_application_messege/src/infrastructure/services/database/local_db.dart';

class DBRepozitory {
  static Future<void> addNewMessage(MessageModel message) async {
    await DBProvider.db.addNewMessage(MessageDBModel(
      id: message.id,
      chatId: message.chatId,
      title: message.title,
      userID: message.userId,
      dateTime: message.dateTime.toString(),
      isLoked: message.isloked,
    ));
  }

  static Future updateMessages(MessageModel message) async {
    final result = await DBProvider.db.updateMessages(MessageDBModel(
      id: message.id,
      chatId: message.chatId,
      title: message.title,
      userID: message.userId,
      dateTime: message.dateTime.toString(),
      isLoked: message.isloked,
    ));
    return result;
  }

  static Future<Map<String, List<MessageModel>>> getByChatId(
      String date) async {
    final lt = await DBProvider.db.getByChatId(date);

    final lts = lt
        .map((event) => MessageModel(
              id: event.id,
              chatId: event.chatId,
              title: event.title,
              userId: event.userID,
              dateTime: DateTime.tryParse(event.dateTime ?? ""),
              isloked: event.isLoked,
            ))
        .toList();
    Map<String, List<MessageModel>> mesMap = {};
    for (MessageModel el in lts) {
      if (mesMap.keys.contains(
          "${el.dateTime?.day}.${el.dateTime?.month}.${el.dateTime?.year.toString().substring(2)}")) {
        mesMap["${el.dateTime?.day}.${el.dateTime?.month}.${el.dateTime?.year.toString().substring(2)}"]
            ?.add(el);
      } else {
        mesMap[
            "${el.dateTime?.day}.${el.dateTime?.month}.${el.dateTime?.year.toString().substring(2)}"] = [
          el
        ];
      }
    }
    return mesMap;
  }

  static Future<void> deleteMessage(int arrivalCode) async {
    await DBProvider.db.deleteMessage(arrivalCode);
  }

  static Future<List<MessageModel>> getAllMessages() async {
    final lt = await DBProvider.db.getAllMessages();
    return lt
        .map((event) => MessageModel(
              id: event.id,
              chatId: event.chatId,
              title: event.title,
              userId: event.userID,
              dateTime: DateTime.tryParse(event.dateTime ?? ""),
            ))
        .toList();
  }
}
