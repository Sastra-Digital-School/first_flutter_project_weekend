import 'package:first_project/core/db/local_database.dart';
import 'package:first_project/modules/favorite/controller/favorite_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:first_project/modules/home/model/product_model.dart';

class FavoriteScreen extends StatelessWidget {
  FavoriteScreen({super.key});

  final FavoriteController favoriteController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar, body: _buildBody);
  }

  get _buildAppBar {
    return AppBar(title: const Text('Favorites'));
  }

  get _buildBody {
    return FutureBuilder<List<Product>>(
      future: LocalDataBase().getProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        final favorites = snapshot.data ?? [];

        if (favorites.isEmpty) {
          return const Center(child: Text('No favorite items'));
        }

        return ListView.builder(
          itemCount: favorites.length,
          itemBuilder: (context, index) {
            final product = favorites[index];

            return Card(
              color: Colors.grey.withValues(alpha: 0.2),
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: ListTile(
                  leading:
                      product.thumbnail != null
                          ? Image.network(
                            product.thumbnail!,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          )
                          : const Icon(Icons.image),
                  title: Text(product.title ?? 'No Title'),
                  subtitle: Text(
                    '\$${product.price?.toStringAsFixed(2) ?? '0.00'}',
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () async {
                      await LocalDataBase().deleteProduct(product.id!);
                      await favoriteController.loadFavorites();
                    },
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
