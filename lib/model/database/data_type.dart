import 'package:sqflite/sqflite.dart';

class DataType {

  static final String TABLE_TYPE = "type";
  static final String TYPE_ID = "id";
  static final String TYPE_NAME = "name";

  static void createTable(Database database){
    String createTableType = "CREATE TABLE IF NOT EXISTS $TABLE_TYPE(" +
        "$TYPE_ID INTEGER PRIMARY KEY AUTOINCREMENT, " +
        "$TYPE_NAME TEXT)";
    database.execute(createTableType);
  }

  // public static void addNewType(Type type, Database database){
  //   SQLiteDatabase db = database.getWritableDatabase();
  //   String query = String.format("INSERT INTO %s VALUES(null, '%s');",
  //       TABLE_TYPE, type.name);
  //
  //   db.execSQL(query);
  //   db.close();
  // }
  //
  // public static Type getNewType(Database database){
  //   SQLiteDatabase db = database.getReadableDatabase();
  //   String query = String.format("SELECT * FROM %s ORDER BY %s DESC LIMIT 1", TABLE_TYPE, TYPE_ID);
  //   Cursor cursor = db.rawQuery(query, null);
  //   cursor.moveToNext();
  //   Type type = new Type(cursor.getInt(0), cursor.getString(1));
  //   db.close();
  //   return type;
  // }
  //
  // public static ArrayList<Type> getAll(Database database){
  //   SQLiteDatabase db = database.getReadableDatabase();
  //
  //   String query = "SELECT * FROM " + TABLE_TYPE;
  //   Cursor cursor = db.rawQuery(query, null);
  //
  //   ArrayList<Type> types = new ArrayList<>();
  //   while (cursor.moveToNext()){
  //     Type type = new Type(cursor.getInt(0), cursor.getString(1));
  //     types.add(type);
  //   }
  //   db.close();
  //   return types;
  // }
  //
  // public static void updateType(Type type, Database database){
  //   SQLiteDatabase db = database.getWritableDatabase();
  //   String query = String.format("UPDATE %s SET %s = '%s' WHERE %s = %s", TABLE_TYPE, TYPE_NAME,
  //       type.name, TYPE_ID, type.id);
  //   db.execSQL(query);
  //   db.close();
  // }
  //
  // public static void deleteType(int id, Database database) {
  //   SQLiteDatabase db = database.getWritableDatabase();
  //
  //   String query = String.format("DELETE FROM %s WHERE %s = %s", TABLE_TYPE, TYPE_ID, id);
  //
  //   db.execSQL(query);
  //   db.close();
  // }
  //
  // public static boolean foreignExist(int typeId, Database database){
  //   SQLiteDatabase db = database.getWritableDatabase();
  //   String query = String.format("SELECT * FROM %s WHERE %s = %s", DataMean.TABLE_MEAN, DataMean.MEAN_TYPE_ID, typeId);
  //   Cursor cursor = db.rawQuery(query, null);
  //   if(cursor.moveToNext()) {
  //     return true;
  //   }
  //   return false;
  // }
}