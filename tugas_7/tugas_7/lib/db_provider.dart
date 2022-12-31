import 'package:flutter/foundation.dart';

import 'db_helper.dart';
import 'shoplist.dart';

class DbProvider extends ChangeNotifier {
  late DbHelper _dbHelper;

  List<ShopList> _shoplist = [];

  List<ShopList> get shoplists => _shoplist;

  DbProvider() {
    _dbHelper = DbHelper();
    _getAll();
  }

  void _getAll() async {
    _shoplist = await _dbHelper.readAll();
    notifyListeners();
  }

  Future<void> addShop(ShopList shoplist) async {
    await _dbHelper.create(shoplist);
    _getAll();
  }

  Future<void> deleteShop(int id) async {
    await _dbHelper.delete(id);
    _getAll();
  }

  Future<void> updateShop(ShopList shoplist) async {
    await _dbHelper.update(shoplist);
    _getAll();
  }
  
}
