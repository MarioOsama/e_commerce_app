import 'package:e_commerce_app/features/browse/browse_result/view/widgets/rounded_action_button.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 16.0, right: 16.0),
      child: Column(
        children: [
          RoundedActionButton(),
          RoundedActionButton(
            icon: Icons.shopping_cart_outlined,
          ),
        ],
      ),
    );
  }
}
