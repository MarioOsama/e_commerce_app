import 'package:e_commerce_app/core/utils/helpers/extensions.dart';
import 'package:e_commerce_app/core/utils/routing/app_routes.dart';
import 'package:e_commerce_app/core/utils/strings/app_strings.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginTextSpan extends StatelessWidget {
  const LoginTextSpan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: AppStrings.alreadyHaveAccount,
            style: AppTextStyle.styleBody3(context)
                .copyWith(color: AppColors.gray700),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                // * Navigate to the log in screen
                context.pushNamed(AppRoutes.login);
              },
            text: AppStrings.login,
            style: AppTextStyle.styleBody3(context)
                .copyWith(color: AppColors.linkColor),
          ),
        ],
      ),
    );
  }
}
