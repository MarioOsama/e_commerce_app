import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:e_commerce_app/features/profile/data/models/settings_item_model.dart';
import 'package:flutter/material.dart';

class SettingsItemListTileWithOutTrailingIcon extends StatelessWidget {
  const SettingsItemListTileWithOutTrailingIcon({
    super.key,
    required this.settingsItem,
    required this.onTap,
  });

  final SettingsItemModel settingsItem;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      title: Text(
        settingsItem.title,
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
          settingsItem.icon,
          color: AppColors.contentPrimary,
        ),
      ),
    );
  }
}
