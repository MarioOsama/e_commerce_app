import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/features/home/views/widgets/home_view_header_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hello Michael',
          style: AppTextStyle.styleHeading1(context),
        ),
        verticalSpace(16),
        const SizedBox(
          height: 30,
          child: HomeViewHeaderListView(),
        ),
      ],
    );
  }
}
