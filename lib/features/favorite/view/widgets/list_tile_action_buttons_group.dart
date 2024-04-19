import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/widgets/rounded_action_button.dart';
import 'package:flutter/material.dart';

class ListTileActionButtonsGroup extends StatelessWidget {
  const ListTileActionButtonsGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RoundedActionButton(
          icon: Icons.shopping_cart_outlined,
          radius: 10,
          color: AppColors.backgroundSecondary,
        ),
        const RoundedActionButton(
          icon: Icons.more_vert_outlined,
        ),
      ],
    );
  }
}
