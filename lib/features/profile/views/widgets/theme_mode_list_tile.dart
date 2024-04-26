import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/features/profile/data/models/settings_item_model.dart';
import 'package:flutter/material.dart';

class ThemeModeListTile extends StatelessWidget {
  const ThemeModeListTile({
    super.key,
  });

  final SettingsItemModel themeModeItem = const SettingsItemModel(
    title: 'Mode',
    icon: Icons.dark_mode,
    tappable: false,
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          themeModeItem.title,
          style: AppTextStyle.styleBody3(context)
              .copyWith(fontWeight: FontWeight.w600),
        ),
        leading: Container(
          padding: const EdgeInsets.all(7),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.backgroundTeritary, width: 2),
          ),
          child: Icon(
            themeModeItem.icon,
            color: AppColors.contentPrimary,
          ),
        ),
        trailing: Switch(
            activeColor: AppColors.contentPrimary,
            inactiveThumbColor: AppColors.contentPrimary,
            inactiveTrackColor: AppColors.white,
            value: false,
            onChanged: (value) {}));
  }
}
