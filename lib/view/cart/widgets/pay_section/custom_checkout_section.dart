import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/view/cart/widgets/pay_section/btn_checkout.dart';
import 'package:e_commerce_app/view/cart/widgets/pay_section/payment_methods.dart';
import 'package:e_commerce_app/view/cart/widgets/pay_section/total_price_section.dart';
import 'package:flutter/material.dart';

class CustomCheckoutSection extends StatelessWidget {
  const CustomCheckoutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          // * Total Price Section(Shipping, Total price)
          TotalPriceSection(),
          SizedBox(
            height: 15,
          ),
          // * Checkout Button
          Row(
            children: [
              BtnCheckout(),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          // * Payment Methods For use to pay
          PaymentMethods()
        ],
      ),
    );
  }
}
