import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:flutter/material.dart';

class OurPropertyRightsSection extends StatelessWidget {
  const OurPropertyRightsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '2024 ©️',
          style: TextStyle(
              color: AppColors.gray700,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        Text(
          'Codium team',
          style: TextStyle(
              color: AppColors.gray700,
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        verticalSpace(20)
      ],
    );
  }
}
