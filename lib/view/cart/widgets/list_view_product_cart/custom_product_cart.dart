import 'package:e_commerce_app/view/cart/widgets/list_view_product_cart/btn_plus_and_minus_product.dart';
import 'package:e_commerce_app/view/cart/widgets/list_view_product_cart/btn_product_more.dart';
import 'package:e_commerce_app/view/cart/widgets/list_view_product_cart/product_details.dart';
import 'package:e_commerce_app/view/cart/widgets/list_view_product_cart/product_image.dart';
import 'package:flutter/material.dart';

class CustomProductCart extends StatelessWidget {
  const CustomProductCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // * Product Image
          Expanded(child: ProductImage()),
          SizedBox(
            width: 5,
          ),
          // * Product Details (Price, Name, Description)
          Expanded(
            flex: 2,
            child: ProductDetails(),
          ),
          Expanded(
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
