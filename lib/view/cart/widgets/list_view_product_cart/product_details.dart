import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // * Product Price
        Text(
          r"$70.99",
          style: AppTextStyle.styleHeading3Extrabold(context),
        ),
        // * Product Name
        Text(
          "GOOGLE Nest Mini",
          style: AppTextStyle.styleHeading3Medium(context),
        ),
        // * Product Description
        Text(
          "Google Assistant, IFTTT",
          style: AppTextStyle.styleCaption1(context).copyWith(
            color: Colors.black38,
          ),
        ),
      ],
    );
  }
}
