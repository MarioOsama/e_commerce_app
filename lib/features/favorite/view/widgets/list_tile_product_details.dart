import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/core/utils/widgets/product_price.dart';
import 'package:flutter/material.dart';

class ListTileProductDetails extends StatelessWidget {
  const ListTileProductDetails({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductPrice(product: product),
        Text(
          product.title,
          style: AppTextStyle.styleHeading3Medium(context),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          product.category,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.styleCaption1(context).copyWith(
            color: AppColors.contentSecondary,
          ),
        ),
      ],
    );
  }
}
