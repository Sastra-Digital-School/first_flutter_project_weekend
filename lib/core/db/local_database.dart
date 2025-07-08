import 'dart:io';
import 'package:first_project/modules/home/model/product_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class LocalDataBase {
  static final LocalDataBase _instance = LocalDataBase._internal();
  factory LocalDataBase() => _instance;
  LocalDataBase._internal();

  static Database? _db;

  Future<Database> get db async {
    if (_db != null) return _db!;
    _db = await _initDB();
    return _db!;
  }

  Future<Database> _initDB() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = join(dir.path, 'products.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE products (
      id INTEGER PRIMARY KEY,
      title TEXT,
      price REAL,
      thumbnail TEXT
    )
  ''');
  }

  Future<int> insertProduct(Product product) async {
    final dbClient = await db;
    return await dbClient.insert('products', {
      'id': product.id,
      'title': product.title,
      'price': product.price,
      'thumbnail': product.thumbnail,
    });
  }

  Future<List<Product>> getProducts() async {
    final dbClient = await db;
    final res = await dbClient.query('products');
    return res
        .map(
          (e) => Product(
            id: e['id'] as int,
            title: e['title'] as String,
            price: e['price'] as double,
            thumbnail: e['thumbnail'] as String,
          ),
        )
        .toList();
  }

  Future<int> deleteProduct(int id) async {
    final dbClient = await db;
    return await dbClient.delete('products', where: 'id = ?', whereArgs: [id]);
  }

  Future<bool> isFavorite(int id) async {
    final dbClient = await db;
    final result = await dbClient.query(
      'products',
      where: 'id = ?',
      whereArgs: [id],
    );
    return result.isNotEmpty;
  }
}
