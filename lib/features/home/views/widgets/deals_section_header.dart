import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class DealsSectionHeader extends StatelessWidget {
  const DealsSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Deals of the day',
          style: AppTextStyle.styleHeading2Semibold(context).copyWith(),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: AppTextStyle.styleBody2Medium(context)
                .copyWith(color: AppColors.contentTeritary),
          ),
        ),
      ],
    );
  }
}
