import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:flutter/material.dart';

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
            // * Shipping Price
            Text(
              "Shipping",
              style: AppTextStyle.styleHeading3Medium(context),
            ),
            const SizedBox(
              height: 10,
            ), // * Total Text
            RichText(
              text: TextSpan(
                text: 'Total',
                style: AppTextStyle.styleHeading3Bold(context),
                children: <TextSpan>[
                  TextSpan(
                      text: '  TVA included',
                      style: AppTextStyle.styleBody2Strikethrough(context)
                          .copyWith(color: const Color(0xFFB0B5B9))),
                ],
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // * Shipping Price
            Text(
              r"$0.00",
              style: AppTextStyle.styleHeading3Medium(context),
            ),
            SizedBox(
              height: 10,
            ),
            // * Total Price
            Text(r"$695.07", style: AppTextStyle.styleHeading3Bold(context))
          ],
        ),
      ],
    );
  }
}
