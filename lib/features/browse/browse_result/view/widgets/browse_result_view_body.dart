import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/features/browse/browse_result/view/widgets/Browse_result_header.dart';
import 'package:e_commerce_app/features/browse/browse_result/view/widgets/browse_item_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BrowseResultViewBody extends StatelessWidget {
  const BrowseResultViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
             verticalSpace(20),
            const BrowseResultHeader(),
            verticalSpace(40),
            Row(
              children: [
                Text(
                  "1331 Products",
                  style: AppTextStyle.styleBody2Medium(context)
                      .copyWith(color: AppColors.gray700),
                ),
                const Spacer(),
                Text(
                  "Sort By",
                  style: AppTextStyle.styleBody2Medium(context),
                ),
                Text(
                  " Relevance",
                  style: AppTextStyle.styleBody2Bold(context),
                ),
              ],
            ),
                 verticalSpace(15),
           const Expanded(child:  Padding(
             padding: EdgeInsets.symmetric(horizontal: 10),
             child: RecommendedSectionGridView(),
           ),),
                verticalSpace(20),
          ],
        ),
      ),
    );
  }
}
