import 'package:e_commerce_app/core/utils/theming/app_images.dart';
import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.sonyHeadphones01,
      fit: BoxFit.cover,
    );
  }
}
