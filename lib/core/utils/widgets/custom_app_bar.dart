import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    this.backButton,
    this.onPressed,
    this.isWithLeading = true,
  });

  final String title;
  final bool? isWithLeading;
  final Widget? backButton;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle:
            AppTextStyle.styleHeading3Bold(context).copyWith(fontSize: 16),
        title: Text(
          title,
        ),
        leading: backButton,
        automaticallyImplyLeading: isWithLeading!,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
