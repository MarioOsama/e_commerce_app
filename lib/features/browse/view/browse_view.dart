import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/features/browse/view/widgets/browse_view_body.dart';
import 'package:flutter/material.dart';

class BrowseView extends StatelessWidget {
  const BrowseView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: AppColors.white,
   body: const BrowseViewBody(),
    );
  }
}