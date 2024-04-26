import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BtnPlusAndMinusProduct extends StatelessWidget {
  const BtnPlusAndMinusProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // * Minus Button
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(12)),
            child: Text(
              "-",
              style: AppTextStyle.styleCaption2(context).copyWith(
                color: AppColors.gray200,
                fontSize: 15,
              ),
            ),
          ),
        ),
        // * Count Text
        const Text("1"),
        // * Plus Button
        GestureDetector(
          onTap: () {},
          child: Container(
            alignment: Alignment.center,
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color: const Color(0xFF495057),
                borderRadius: BorderRadius.circular(12)),
            child: Text(
              "+",
              style: AppTextStyle.styleCaption2(context).copyWith(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
