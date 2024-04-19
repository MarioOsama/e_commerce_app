import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:flutter/material.dart';

class RoundedActionButton extends StatelessWidget {
  const RoundedActionButton(
      {super.key,
      this.iconSize,
      this.isSelected,
      this.icon,
      this.radius,
      this.color});

  final IconData? icon;
  final double? iconSize;
  final bool? isSelected;
  final double? radius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      isSelected: isSelected,
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius ?? 20),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(color ?? Colors.white),
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
