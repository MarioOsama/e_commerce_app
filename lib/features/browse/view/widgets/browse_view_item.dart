import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class BrowseViewItem extends StatelessWidget {
  const BrowseViewItem({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Text(text,style: AppTextStyle.styleHeading2Extrabold(context),),
         const Spacer(),
         Icon(Icons.chevron_right_sharp,color: AppColors.black,size: 30,),

        ],
      ),
    );
  }
}
