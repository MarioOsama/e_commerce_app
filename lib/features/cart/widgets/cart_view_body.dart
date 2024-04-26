// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/features/cart/widgets/pay_section/custom_checkout_section.dart';
import 'package:e_commerce_app/features/cart/widgets/list_view_product_cart/product_list_view.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // * Title (Card)
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Text("Cart",
              style: AppTextStyle.styleHeading3Bold(context).copyWith(
                color: Colors.black,
                fontSize: 18,
              )),
        ),
        // * Product List View For Checkout (Product Details, Product More Bottun, Plus And Minus Bottun)
        const Expanded(child: ProductListView()),
        // * Divider
        const Divider(),
        // * Custom Checkout Section (Total Price, Checout Button, Paymeny Methods)
        const CustomCheckoutSection(),
        verticalSpace(16),
      ],
    );
  }
}
