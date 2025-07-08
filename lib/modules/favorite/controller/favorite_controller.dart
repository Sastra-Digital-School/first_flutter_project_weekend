import 'package:first_project/core/db/local_database.dart';
import 'package:get/get.dart';
import 'package:first_project/modules/home/model/product_model.dart';

class FavoriteController extends GetxController {
  final RxSet<int> _favoriteIds = <int>{}.obs;

  Set<int> get favoriteIds => _favoriteIds;

  @override
  void onInit() {
    super.onInit();
    loadFavorites();
  }

  Future<void> loadFavorites() async {
    final products = await LocalDataBase().getProducts();
    _favoriteIds.clear();
    _favoriteIds.addAll(products.map((p) => p.id!));
  }

  bool isFavorite(int id) => _favoriteIds.contains(id);

  Future<void> toggleFavorite(Product product) async {
    if (_favoriteIds.contains(product.id)) {
      await LocalDataBase().deleteProduct(product.id!);
      _favoriteIds.remove(product.id);
    } else {
      await LocalDataBase().insertProduct(product);
      _favoriteIds.add(product.id!);
    }
  }
}
