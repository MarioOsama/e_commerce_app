import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/core/utils/widgets/product_price.dart';
import 'package:e_commerce_app/core/utils/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class DealsSectionCard extends StatelessWidget {
  const DealsSectionCard({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2,
      child: Container(
        margin: const EdgeInsets.only(right: 8.0),
        padding: const EdgeInsets.only(top: 8.0, right: 8.0),
        decoration: BoxDecoration(
          color: AppColors.backgroundSecondary,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Row(
          children: [
            Expanded(
              child: Image.asset(
                product.images.first,
              ),
            ),
            horizontalSpace(8.0),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCardContent(context),
                  const RoundedButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column _buildCardContent(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.category,
          style: AppTextStyle.styleCaption2(context)
              .copyWith(color: AppColors.contentSecondary),
        ),
        verticalSpace(12.0),
        ProductPrice(
          product: product,
        ),
        verticalSpace(4.0),
        Text(
          product.name,
          style: AppTextStyle.styleHeading3Bold(context).copyWith(
            color: AppColors.contentPrimary,
          ),
        ),
        verticalSpace(2.0),
        SizedBox(
          width: width * 0.3,
          child: _buildSubCategoriesText(context),
        ),
      ],
    );
  }

  Text _buildSubCategoriesText(BuildContext context) {
    final String subCategories = product.subCategories.join(', ');
    return Text(
      subCategories,
      style: AppTextStyle.styleCaption1(context).copyWith(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        color: AppColors.contentSecondary,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
