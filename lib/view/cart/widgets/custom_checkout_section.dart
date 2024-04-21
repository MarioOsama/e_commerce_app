import 'package:e_commerce_app/view/cart/widgets/btn_checkout.dart';
import 'package:e_commerce_app/view/cart/widgets/payment_methods.dart';
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

class TotalPriceSection extends StatelessWidget {
  const TotalPriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Shipping",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            RichText(
              text: const TextSpan(
                text: 'Total',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: '  TVA included',
                    style: TextStyle(
                      color: Color(0xFFB0B5B9),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              r"$0.00",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              r"$695.07",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ],
    );
  }
}
