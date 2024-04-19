import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget {
  const ProductPrice({super.key, required this.product, this.isBig = false});

  final ProductModel product;
  final bool isBig;

  @override
  Widget build(BuildContext context) {
    final bool isSale = product.oldPrice != null;
    if (isSale) {
      return _buildSalePrice(context);
    } else {
      return _buildRegularPrice(context);
    }
  }

  Text _buildRegularPrice(BuildContext context) {
    return Text(
      '\$${product.price.toString()}',
      style: AppTextStyle.styleHeading3Extrabold(context)
          .copyWith(fontSize: isBig ? 24 : 14),
    );
  }

  Row _buildSalePrice(BuildContext context) {
    return Row(
      children: [
        Text(
          '\$${product.price.toStringAsFixed(2)}',
          style: AppTextStyle.styleHeading3Extrabold(context).copyWith(
            color: AppColors.contentSale,
            fontSize: isBig ? 24 : 14,
          ),
        ),
        horizontalSpace(4.0),
        Text(
          '\$${product.oldPrice!.toStringAsFixed(2)}',
          style: AppTextStyle.styleCaption2(context).copyWith(
            color: AppColors.contentSecondary,
            decoration: TextDecoration.lineThrough,
            fontSize: isBig ? 14 : 10,
          ),
        ),
      ],
    );
  }
}
