import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class SearchBarItem extends StatelessWidget {
  const SearchBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
          hintText: S.of(context).search,
          hintStyle: AppTextStyle.styleBody3(context)
              .copyWith(color: AppColors.contentSecondary),
          suffixIcon: Icon(
            Icons.search,
            color: AppColors.contentSecondary,
          ),
          filled: true,
          fillColor: AppColors.backgroundSecondary,
        ),
        cursorColor: AppColors.black,
      ),
    );
  }
}
