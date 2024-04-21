import 'package:flutter/material.dart';

class PaymentMethodsCard extends StatelessWidget {
  const PaymentMethodsCard({
    super.key,
    required this.icon,
  });
  final String icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 80,
      child: Card(
        elevation: 6,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Image.asset(icon),
      ),
    );
  }
}
