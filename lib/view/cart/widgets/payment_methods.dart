import 'package:e_commerce_app/core/utils/theming/app_images.dart';
import 'package:e_commerce_app/view/cart/widgets/payment_methods_card.dart';
import 'package:flutter/material.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});
  @override
  Widget build(BuildContext context) {
    final List<String> paymentMethodsIcons = [
      AppImages.visaIcon,
      AppImages.visaIcon,
      AppImages.visaIcon,
      AppImages.visaIcon,
    ];
    return Row(
      children: paymentMethodsIcons
          .map(
            (e) => Expanded(
              child: PaymentMethodsCard(
                icon: e,
              ),
            ),
          )
          .toList(),
    );
  }
}
