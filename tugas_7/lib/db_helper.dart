
import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tugas_7/shoplist.dart';

class DbHelper {
  static DbHelper? _dbHelper;

  DbHelper._internal() {
    _dbHelper = this;
  }

  factory DbHelper() => _dbHelper ?? DbHelper._internal();

  static late Database _database;

  Future<Database> get database async {
    return _database = await _initializeDb();
  }

  static const String _tableName = 'shoplist';

  Future<Database> _initializeDb() async {
    var path = await getDatabasesPath();
    var db = openDatabase(
      join(path, 'shoplist_db.db'),
      onCreate: (db, version) async {
        await db.execute(
            '''CREATE TABLE $_tableName (id INTEGER PRIMARY KEY, barang TEXT, komen TEXT, tgl TEXT, budget INTEGER)''');
      },
      version: 1,
    );
    return db;
  }

  Future<void> create(ShopList shoplist) async {
    final Database db = await database;
    await db.insert(
      _tableName,
      shoplist.toMap(),
    );
  }

  Future<List<ShopList>> readAll() async {
    final Database db = await database;
    List<Map<String, dynamic>> result = await db.query(_tableName);

    return result.map((res) => ShopList.fromMap(res)).toList();
  }

  Future<int> delete(int id) async {
    final Database db = await database;
    return await db.delete(_tableName, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> update(ShopList shoplist) async {
    final Database db = await database;
    return await db.update(_tableName, shoplist.toMap(),
        where: 'id = ?', whereArgs: [shoplist.id]);
  }
}
