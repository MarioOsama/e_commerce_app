import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/features/browse/view/widgets/browse_view_item.dart';
import 'package:e_commerce_app/features/browse/view/widgets/line.dart';
import 'package:e_commerce_app/features/browse/view/widgets/search_bar.dart';
import 'package:e_commerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class BrowseViewBody extends StatelessWidget {
  const BrowseViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SearchBarItem(),
            verticalSpace(20),
            InkWell(
                onTap: () {}, child: BrowseViewItem(text: S.of(context).Audio)),
            const SpaceLine(),
            InkWell(
                onTap: () {},
                child: BrowseViewItem(text: S.of(context).DronesElectronics)),
            const SpaceLine(),
            InkWell(
                onTap: () {},
                child: BrowseViewItem(text: S.of(context).PhotoVideo)),
            const SpaceLine(),
            InkWell(
                onTap: () {},
                child: BrowseViewItem(text: S.of(context).GamingVR)),
            const SpaceLine(),
            InkWell(
                onTap: () {},
                child: BrowseViewItem(text: S.of(context).Networking)),
            const SpaceLine(),
            InkWell(
                onTap: () {},
                child: BrowseViewItem(text: S.of(context).NotebooksPCs)),
            const SpaceLine(),
            InkWell(
                onTap: () {},
                child: BrowseViewItem(text: S.of(context).PCcomponents)),
            const SpaceLine(),
            InkWell(
                onTap: () {},
                child: BrowseViewItem(text: S.of(context).Peripherals)),
            const SpaceLine(),
            InkWell(
                onTap: () {},
                child: BrowseViewItem(text: S.of(context).SmartphonesTablets)),
            const SpaceLine(),
            InkWell(
                onTap: () {},
                child: BrowseViewItem(text: S.of(context).Softwaresolutions)),
            const SpaceLine(),
            InkWell(
                onTap: () {},
                child: BrowseViewItem(text: S.of(context).TVHomecinema)),
          ],
        ),
      ),
    );
  }
}
