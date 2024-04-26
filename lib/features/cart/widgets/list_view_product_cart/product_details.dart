import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/core/utils/widgets/product_price.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // * Product Price
        ProductPrice(product: product),
        // * Product Name
        Text(
          product.name,
          style: AppTextStyle.styleHeading3Medium(context),
        ),
        // * Product Description
        Text(
          product.subCategories.join(", "),
          style: AppTextStyle.styleCaption1(context).copyWith(
            color: Colors.black38,
          ),
        ),
      ],
    );
  }
}
