import 'package:flutter/material.dart';

import '../../../../core/utils/theming/app_colors.dart';

class CustomTextFormFeild extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool? isPassword;

  const CustomTextFormFeild(
      {super.key,
      required this.hintText,
      required this.icon,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.black,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.backgroundSecondary,
        suffixIcon: Icon(
          icon,
          color: AppColors.gray700,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.black)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.backgroundSecondary)),
        hintText: hintText,
        hintStyle: TextStyle(color: AppColors.gray700, fontSize: 17),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      obscureText: isPassword!,
      obscuringCharacter: '*',
    );
  }
}
