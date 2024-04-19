import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/features/favorite/view/widgets/favorite_list_item.dart';
import 'package:flutter/material.dart';

class FavoriteListView extends StatelessWidget {
  const FavoriteListView({
    super.key,
    required this.favoriteProducts,
  });

  final List<ProductModel> favoriteProducts;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 32),
      itemCount: favoriteProducts.length,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
        child: GestureDetector(
          onTap: () {
            print('Product: $index');
          },
          child: FavoriteListItem(product: favoriteProducts[index]),
        ),
      ),
    );
  }
}
