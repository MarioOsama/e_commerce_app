import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/features/home/views/widgets/recommended_section_grid_view.dart';
import 'package:flutter/material.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recommended for you',
          style: AppTextStyle.styleHeading2Semibold(context),
        ),
        verticalSpace(8),
        const Expanded(
          child: RecommendedSectionGridView(),
        ),
      ],
    );
  }
}
