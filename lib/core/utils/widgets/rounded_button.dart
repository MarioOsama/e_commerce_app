import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({super.key, this.iconSize, this.isSelected, this.icon});

  final IconData? icon;
  final double? iconSize;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      isSelected: isSelected,
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      icon: Icon(
        icon ?? Icons.favorite,
        size: iconSize,
        color: AppColors.black,
      ),
      alignment: AlignmentDirectional.center,
    );
  }
}
