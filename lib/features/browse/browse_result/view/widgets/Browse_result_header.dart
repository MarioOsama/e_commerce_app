import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_icon.dart';
import 'package:e_commerce_app/features/browse/browse_result/view/widgets/Browse-result_header_item.dart';
import 'package:e_commerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class BrowseResultHeader extends StatelessWidget {
  const BrowseResultHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
         const Spacer(),
         Container(
      clipBehavior: Clip.none,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors.backgroundSecondary, 
      ),
       child: Padding(
         padding: const EdgeInsets.all(16),
         child: SvgPicture.asset(
          Assets.filter
         ),
       ),
      ),
     const Spacer(),
          BrowseResultHeaderItem(text: S.of(context).Category),
        const  Spacer(),
          BrowseResultHeaderItem(text: S.of(context).Brand),
        const     Spacer(),
          BrowseResultHeaderItem(text: S.of(context).Price),
          const   Spacer(),
          
          
        
      ]
    );
  }
}