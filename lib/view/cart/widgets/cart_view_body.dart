// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:e_commerce_app/view/cart/widgets/custom_checkout_section.dart';
import 'package:e_commerce_app/view/cart/widgets/product_list_view.dart';
import 'package:flutter/material.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // * Title (Card)
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Text(
            "Cart",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        // * Product List View For Checkout
        Expanded(child: ProductListView()),
        // * Divider
        Divider(),
        // * Custom Checkout Section (Total Price, Checout Button, Paymeny Methods)
        CustomCheckoutSection()
      ],
    );
  }
}
