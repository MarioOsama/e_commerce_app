import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/strings/app_strings.dart';
import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/features/profile/data/models/settings_item_model.dart';
import 'package:e_commerce_app/features/profile/views/widgets/our_property_right_section.dart';
import 'package:e_commerce_app/features/profile/views/widgets/settings_item_list_tile_with_trailing_icon.dart';
import 'package:e_commerce_app/features/profile/views/widgets/theme_mode_list_tile.dart';
import 'package:e_commerce_app/features/profile/views/widgets/settings_item_list_tile_with_out_trailing_icon.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const List<SettingsItemModel> settingsItems = [
    SettingsItemModel(
      title: AppStrings.personalInformation,
      subtitle: AppStrings.personalInformation,
      icon: Icons.person,
    ),
    SettingsItemModel(
      title: AppStrings.lang,
      icon: Icons.language,
    ),
    SettingsItemModel(
      title: AppStrings.logOut,
      icon: Icons.logout_outlined,
      tappable: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, right: 10, left: 10),
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundColor: AppColors.backgroundTeritary,
            ),
            verticalSpace(50),
            const ThemeModeListTile(),
            verticalSpace(16),
            SettingsItemListTileWithTrailingIcon(
              settingsItem: settingsItems[0],
              onTap: () {},
            ),
            verticalSpace(16),
            SettingsItemListTileWithTrailingIcon(
              settingsItem: settingsItems[1],
              onTap: () {},
            ),
            verticalSpace(16),
            SettingsItemListTileWithOutTrailingIcon(
              settingsItem: settingsItems[2],
              onTap: () {},
            ),
            verticalSpace(16),
            const Expanded(child: SizedBox()),
            const OurPropertyRightsSection(),
          ],
        ),
      ),
    ));
  }
}
