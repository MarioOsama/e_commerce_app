import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:flutter/material.dart';

class SpaceLine extends StatelessWidget {
  const SpaceLine({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      child: Container(
        height: 1,
        width: double.infinity,
      color: AppColors.gray100,      
      ),
    );
  }
}