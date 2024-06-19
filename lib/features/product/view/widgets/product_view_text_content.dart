import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/core/utils/widgets/product_price.dart';
import 'package:flutter/material.dart';

class ProductViewTextContent extends StatelessWidget {
  const ProductViewTextContent({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          ProductPrice(
            product: product,
            isBig: true,
          ),
          verticalSpace(2),
          Text(
            product.title,
            style: AppTextStyle.styleHeading2Semibold(context),
          ),
          verticalSpace(2),
          if (product.model != null) _buildProduct(context),
          verticalSpace(20),
          Text(
            product.description,
            style: AppTextStyle.styleBody1(context).copyWith(
              color: AppColors.contentSecondary,
            ),
          ),
        ],
      ),
    );
  }

  Text _buildProduct(BuildContext context) {
    return Text(
      'Model: ${product.model!}',
      style: AppTextStyle.styleBody1(context).copyWith(
        color: AppColors.contentSecondary,
      ),
    );
  }
}
