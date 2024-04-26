import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/features/home/views/widgets/home_view_deals_section.dart';
import 'package:e_commerce_app/features/home/views/widgets/home_view_header.dart';
import 'package:e_commerce_app/features/home/views/widgets/recommended_section_grid_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0, left: 15, right: 15),
      child: CustomScrollView(
        slivers: [
          // Header
          const SliverToBoxAdapter(child: HomeViewHeader()),
          SliverToBoxAdapter(child: verticalSpace(36)),
          // Deals Section
          const SliverToBoxAdapter(
            child: HomeViewDealsSection(),
          ),
          SliverToBoxAdapter(child: verticalSpace(32)),
          // Recommended Section
          SliverToBoxAdapter(
            child: Text(
              'Recommended for you',
              style: AppTextStyle.styleHeading2Semibold(context),
            ),
          ),
          SliverToBoxAdapter(child: verticalSpace(8)),
          const RecommendedSectionGridView(),
        ],
      ),
    );
  }
}
