import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/features/product/view/widgets/action_buttons.dart';
import 'package:e_commerce_app/features/product/view/widgets/product_image.dart';
import 'package:flutter/material.dart';

class ProductViewHeader extends StatelessWidget {
  const ProductViewHeader({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: ProductImage(image: product.images.first),
        ),
        const ActionButtons(),
      ],
    );
  }
}
