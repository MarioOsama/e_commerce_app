import 'package:e_commerce_app/core/utils/helpers/extensions.dart';
import 'package:e_commerce_app/core/utils/routing/app_routes.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class BtnGetStarted extends StatelessWidget {
  const BtnGetStarted({super.key, this.backgroundColor, this.textColor});
  final Color? backgroundColor, textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              elevation: 0,
              backgroundColor: Colors.white),
          onPressed: () {
            // * Navigate to the home screen
            context.pushNamed(AppRoutes.login);
          },
          child: Text(
            "Get started",
            style: AppTextStyle.styleHeading2Semibold(context).copyWith(
              fontSize: 15,
            ),
          )),
    );
  }
}
