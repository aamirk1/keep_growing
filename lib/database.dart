import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqlDatabase {
  Future<void> createDatabase() async {
    try {
      final path = await getDatabasesPath();
      String database = join(path, "mydb.db");
      Database db = await openDatabase(
        database,
        version: 1,
        onCreate: (db, version) async {
          if (!db.isOpen) {
            await db.execute(
                'CREATE TABLE fruit (id INTEGER PRIMARY KEY, name VARCHAR, price INTEGER)');
          }
        },
      );
    } catch (e) {
      print("Error Occured While Creating Database:$e");
    }
  }

  Future<void> insertData() async {
    try {
      Database db = await openDatabase("mydb.db");
      await db.insert("fruit", {"id": 1, "name": "orange", "price": 100});
      print("Data Insertion Successfull");
    } catch (e) {
      print("Error Occured While Inserting:$e");
    }
  }

  Future<void> removeRowById(int idToRemove) async {
    try {
      Database db = await openDatabase("mydb.db");
      await db.delete("fruit", where: 'id = ?', whereArgs: [idToRemove]);
      print("Data Removing Successfull");
    } catch (e) {
      print("Error Occured While Removing:$e");
    }
  }

  Future<void> getDataById(int id) async {
    try {
      dynamic data;
      Database db = await openDatabase("mydb.db");
      data = await db.rawQuery('SELECT * FROM fruit');
      print("Data - $data");
    } catch (e) {
      print("Error Occured While Getting Data:$e");
    }
  }
}
