import 'package:flutter/material.dart';

import '../../../../core/utils/theming/app_colors.dart';

class CustomTextFormFeild extends StatelessWidget {
  final String hintText;
  final IconData icon;

  CustomTextFormFeild({required this.hintText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.black,
      decoration: InputDecoration(
        suffixIcon: Icon(
          icon,
          color: AppColors.gray700,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.black)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.gray700)),
        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.gray700, fontSize: 17),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
