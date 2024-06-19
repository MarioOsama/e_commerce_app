import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/features/favorite/view/widgets/list_tile_action_buttons_group.dart';
import 'package:e_commerce_app/features/favorite/view/widgets/list_tile_product_details.dart';
import 'package:e_commerce_app/features/favorite/view/widgets/list_tile_product_image.dart';
import 'package:flutter/material.dart';

class FavoriteListItem extends StatelessWidget {
  const FavoriteListItem({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ListTileProductImage(
            productImage: product.image,
          ),
        ),
        Flexible(
          flex: 2,
          child: ListTileProductDetails(
            product: product,
          ),
        ),
        const Flexible(
          child: ListTileActionButtonsGroup(),
        )
      ],
    );
  }
}
