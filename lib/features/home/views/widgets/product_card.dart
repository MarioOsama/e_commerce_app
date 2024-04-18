import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/features/home/views/widgets/fav_button.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _buildCardHeader(),
        ),
        _buildCardText(context),
      ],
    );
  }

  Stack _buildCardHeader() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.backgroundSecondary,
            borderRadius: BorderRadius.circular(24),
          ),
          child: Image.asset(
            product.images.first,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 4.0, right: 4.0),
          child: FavoriteButton(
            iconSize: 18,
          ),
        ),
      ],
    );
  }

  Padding _buildCardText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.price.toStringAsFixed(2),
            style: AppTextStyle.styleHeading3Extrabold(context),
          ),
          verticalSpace(2),
          Text(
            product.name,
            style: AppTextStyle.styleHeading3Medium(context),
          ),
        ],
      ),
    );
  }
}
