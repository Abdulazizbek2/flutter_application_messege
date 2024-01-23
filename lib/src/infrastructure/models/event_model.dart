class MessageFNM {
  static final List<String> names = [
    messageId,
    chatId,
    title,
    userId,
    isloked,
  ];

  static const String messageId = "_id";
  static const String chatId = "chatId";
  static const String title = "title";
  static const String userId = "userId";

  static const String dateTime = 'dateTime';
  static const String isloked = 'isloked';
}

class MessageDBModel {
  final int? id;
  final String? chatId;
  final String? title;
  final String? userID;
  final String? dateTime;

  final bool? isLoked;

  MessageDBModel({
    this.id,
    this.chatId,
    this.title,
    this.userID,
    this.dateTime,
    this.isLoked,
  });

  MessageDBModel copyWith({
    int? id,
    String? chatId,
    String? title,
    String? userID,
    bool? isLoked,
    String? dateTime,
  }) =>
      MessageDBModel(
        id: id ?? this.id,
        chatId: chatId ?? chatId,
        title: title ?? this.title,
        userID: userID ?? userID,
        dateTime: dateTime ?? dateTime,
        isLoked: isLoked ?? isLoked,
      );

  Map<String, Object?> toMap() => {
        MessageFNM.chatId: chatId,
        MessageFNM.title: title,
        MessageFNM.userId: userID,
        MessageFNM.dateTime: dateTime,
        MessageFNM.isloked: isLoked,
      };

  static MessageDBModel fromMap(Map<String, Object?> json) => MessageDBModel(
        id: json[MessageFNM.messageId] as int?,
        chatId: json[MessageFNM.chatId] as String?,
        title: json[MessageFNM.title] as String?,
        userID: json[MessageFNM.userId] as String?,
        dateTime: json[MessageFNM.dateTime] as String?,
        isLoked: (json[MessageFNM.isloked] as int?) == 1,
      );
}

class MessageModel {
  final int? id;
  final String? chatId;
  final String? title;
  final String? userId;
  final DateTime? dateTime;

  final bool? isloked;

  MessageModel({
    this.id,
    this.chatId,
    this.title,
    this.userId,
    this.dateTime,
    this.isloked,
  });

  MessageModel copyWith({
    int? id,
    String? chatId,
    String? title,
    String? userId,
    bool? isloked,
    DateTime? dateTime,
  }) =>
      MessageModel(
        id: id ?? this.id,
        chatId: chatId ?? this.chatId,
        title: title ?? this.title,
        userId: userId ?? this.userId,
        dateTime: dateTime ?? this.dateTime,
        isloked: isloked ?? this.isloked,
      );

  Map<String, Object?> toMap() => {
        MessageFNM.chatId: chatId,
        MessageFNM.title: title,
        MessageFNM.userId: userId,
        MessageFNM.dateTime: dateTime,
        MessageFNM.isloked: isloked,
      };

  static MessageModel fromMap(Map<String, Object?> json) => MessageModel(
        id: json[MessageFNM.messageId] as int?,
        chatId: json[MessageFNM.chatId] as String?,
        title: json[MessageFNM.title] as String?,
        userId: json[MessageFNM.userId] as String?,
        isloked: json[MessageFNM.isloked] as bool?,
      );
}
