import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/features/browse/browse_result/view/widgets/browse_result_view_body.dart';
import 'package:e_commerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class BrowseResultView extends StatelessWidget {
  const BrowseResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(S.of(context).HeadPhones,style:AppTextStyle.styleHeading3Bold(context) ,),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.chevron_left_sharp),
          onPressed: () {
            
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),  
            onPressed: () {
              
            },
          ),
        ],
         
      ),
      body:const BrowseResultViewBody(),
    );
  }
}