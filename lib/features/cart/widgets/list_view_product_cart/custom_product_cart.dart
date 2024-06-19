import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/features/cart/widgets/list_view_product_cart/btn_plus_and_minus_product.dart';
import 'package:e_commerce_app/features/cart/widgets/list_view_product_cart/btn_product_more.dart';
import 'package:e_commerce_app/features/cart/widgets/list_view_product_cart/product_details.dart';
import 'package:e_commerce_app/features/product/view/widgets/product_image.dart';
import 'package:flutter/material.dart';

class CustomProductCart extends StatelessWidget {
  const CustomProductCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // * Product Image
          Expanded(
              child: ProductImage(
            image: product.image,
          )),
          const SizedBox(
            width: 5,
          ),
          horizontalSpace(15),
          // * Product Details (Price, Name, Description)
          Expanded(
            flex: 2,
            child: ProductDetails(
              product: product,
            ),
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // * Product More Bottun(Delete, ....)
                BtnProductMore(),
                SizedBox(
                  height: 20,
                ),
                // * Button For Plus And Minus Product Count in Cart
                BtnPlusAndMinusProduct(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
