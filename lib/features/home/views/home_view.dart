import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/features/home/views/widgets/home_view_deals_section.dart';
import 'package:e_commerce_app/features/home/views/widgets/home_view_header.dart';
import 'package:e_commerce_app/features/home/views/widgets/recommended_section.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeViewHeader(),
            verticalSpace(36),
            const Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: HomeViewDealsSection(),
            ),
            verticalSpace(32),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: RecommendedSection(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
