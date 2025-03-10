

import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart ' as sql;
class SQLHelper {



  static Future<sql.Database> myData() async {
    return sql.openDatabase('myNotes.db', version: 1,
        onCreate: (sql.Database database, int version) async {
          await createTables(database);
        });
  }


  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE notes(
        id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
        title TEXT,
        subtitle TEXT,
        createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      )""");
  }



  /// add datas to  notes table inside myNotes.db
  static Future<int> createNote(String title, String note) async {
    final db = await SQLHelper.myData(); ///to open database
    final data = {'title': title, 'subtitle': note};
    final id = await db.insert("notes", data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }




  /// read all data from table
  static Future<List<Map<String, dynamic>>> readNotes() async {
    final db = await SQLHelper.myData(); ///to open database
    return db.query('notes', orderBy: 'id');
  }



 static Future<int> updatenote(int id,String newtitle, String newsubtitle)async{
       final db= await SQLHelper.myData();
       final newdata={
         "title":newtitle,
         "subtitle":newsubtitle,
         "createdAt" :DateTime.now().toString()
       };
       final result= await db.update("notes", newdata, where: "id=?", whereArgs: [id]);
       return result;




}
static Future<void>deletenote(int id)async{
  final db= await SQLHelper.myData();
    try{
      await db.delete("notes",where: "id=?", whereArgs: [id]);
    }
    catch(err){
      debugPrint("something want to wrong");
    }

}






}
