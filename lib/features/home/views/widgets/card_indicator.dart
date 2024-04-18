import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 5,
      width: isActive ? 35 : 10,
      decoration: BoxDecoration(
        color: AppColors.contentPrimary.withAlpha(isActive ? 255 : 20),
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}
