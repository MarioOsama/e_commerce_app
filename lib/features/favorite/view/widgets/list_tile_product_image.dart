import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:flutter/material.dart';

class ListTileProductImage extends StatelessWidget {
  const ListTileProductImage({
    super.key,
    required this.productImage,
  });

  final String productImage;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.9,
      child: Container(
        margin: const EdgeInsets.all(7.0),
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: AppColors.backgroundSecondary,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Image.asset(
          productImage,
        ),
      ),
    );
  }
}
