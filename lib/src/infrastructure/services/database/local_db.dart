import 'dart:io';

import 'package:flutter_application_messege/src/infrastructure/models/event_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DBProvider {
  static final DBProvider db = DBProvider();
  static Database? _database;
  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  static initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "todo_calendar.db");
    return await openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE Messages ("
          "${MessageFNM.messageId} INTEGER PRIMARY KEY AUTOINCREMENT,"
          "${MessageFNM.chatId} TEXT,"
          "${MessageFNM.title} TEXT,"
          "${MessageFNM.userId} TEXT,"
          "${MessageFNM.dateTime} TEXT,"
          "${MessageFNM.isloked} BOOLEAN"
          ")");
      await db.execute("CREATE TABLE THEME (theme TEXT)");
    });
  }

//Messages
  addNewMessage(MessageDBModel event) async {
    final db = await database;
    var raw = await db.rawInsert(
        'INSERT INTO Messages( ${MessageFNM.chatId}, ${MessageFNM.title}, ${MessageFNM.userId}, ${MessageFNM.dateTime},  ${MessageFNM.isloked})'
        'VALUES(?,?,?,?,?)',
        [
          event.chatId,
          event.title,
          event.userID,
          event.dateTime,
          event.isLoked,
        ]);
    return raw;
  }

  Future<List<MessageDBModel>> getAllMessages() async {
    final db = await database;
    var res =
        await db.query("Messages", orderBy: "${MessageFNM.dateTime} DESC");
    List<MessageDBModel> list =
        res.isEmpty ? [] : res.map((e) => MessageDBModel.fromMap(e)).toList();
    return list;
  }

  deleteMessage(int eventId) async {
    final db = await database;
    return db.delete("Messages",
        where: "${MessageFNM.messageId} = ?", whereArgs: [eventId]);
  }

  updateMessages(MessageDBModel event) async {
    final db = await database;
    return db.update("Messages", event.toMap(),
        where: "${MessageFNM.messageId} = ?", whereArgs: [event.id]);
  }

  Future<List<MessageDBModel>> getByChatId(String chatId) async {
    final db = await database;
    final results = await db.query(
      "Messages",
      // columns: EvetsFNM.names,
      // orderBy: "${MessageFNM.dateTime} DESC",
      where: '${MessageFNM.chatId} = ?',
      whereArgs: [chatId],
    );
    if (results.isNotEmpty) {
      return results.map((json) => MessageDBModel.fromMap(json)).toList();
    } else {
      return [];
    }
  }

//service
  setThemeMode(String? mode) async {
    final db = await database;
    await db.insert("THEME", {"theme": mode});
  }

  static String? _themeMode;
  static Future<DBProvider> get create async {
    final db = await database;
    var res = await db.query("THEME");
    List<String> list =
        res.isEmpty ? [] : res.map((e) => e["theme"] as String).toList();
    _themeMode = list[0];
    return DBProvider();
  }

  String? get getThemeMode {
    return _themeMode;
  }

  Future<void> signOut() async => (await database).close();
}
