import 'package:tubes_provis/Database/Model/HelpModel.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:io' as io;
import 'dart:async';

class DbHelp {
  static Database? _db;

  static const String DB_Name = 'test.db';
  static const String Table_Help = 'help';
  static const int Version = 1;

  static const String C_HelpID = 'user_id';
  static const String C_UserName = 'user_name';
  static const String C_Email = 'email';
  static const String C_Password = 'password';
  static const String C_Message = 'message';

  Future<Database> get db async =>
      _db ??= await initDb();

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_Name);
    var db = await openDatabase(path, version: Version, onCreate: _onCreate);
    return db;
  }

  // CREATE TABLE 
  _onCreate(Database db, int intVersion) async {
    await db.execute("CREATE TABLE $Table_Help ("
        " $C_HelpID TEXT, "
        " $C_UserName TEXT, "
        " $C_Email TEXT,"
        " $C_Password TEXT, "
        " $C_Message TEXT, "
        " PRIMARY KEY ($C_HelpID)"
        ")");
  }

  // SIMPAN DATA TABEL
  Future<int> saveData(HelpModel help) async {
    var dbClient = await db;
    var res = await dbClient.insert(Table_Help, help.toMap());
    return res;
  }
}