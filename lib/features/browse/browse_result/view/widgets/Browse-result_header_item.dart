import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class BrowseResultHeaderItem extends StatelessWidget {
  const BrowseResultHeaderItem({super.key, required this.text});
 final String text ;
  @override
  Widget build(BuildContext context) {
    return  Container(
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.backgroundSecondary, 
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        child: Row(
        children: [
          Text(textAlign:  TextAlign.center,
            text,style:AppTextStyle.styleBody2Medium(context),),
          IconButton(padding: EdgeInsets.zero,
            onPressed: () {}, icon: const Icon(Icons.keyboard_arrow_down))
        ],
        ),
      ),
    );
  }
}