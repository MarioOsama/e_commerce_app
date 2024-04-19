import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, required this.title, this.backButton, this.onPressed});

  final String title;
  final Widget? backButton;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: AppBar(
        centerTitle: true,
        titleTextStyle:
            AppTextStyle.styleHeading3Bold(context).copyWith(fontSize: 16),
        title: Text(
          title,
        ),
        leading: backButton,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
