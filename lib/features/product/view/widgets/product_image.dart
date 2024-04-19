import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.backgroundSecondary,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Center(
        child: Image.asset(
          product.images.first,
        ),
      ),
    );
  }
}
