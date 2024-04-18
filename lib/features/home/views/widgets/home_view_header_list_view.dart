import 'package:e_commerce_app/core/utils/theming/app_colors.dart';
import 'package:e_commerce_app/core/utils/theming/app_text_style.dart';
import 'package:flutter/material.dart';

class HomeViewHeaderListView extends StatefulWidget {
  const HomeViewHeaderListView({
    super.key,
  });

  static const List<String> homeCategoriesList = <String>[
    'Home',
    'Audio',
    'Drones + Electronics',
    'Photo + Video',
    'Clothing',
    'Shoes',
    'Accessories',
  ];

  @override
  State<HomeViewHeaderListView> createState() => _HomeViewHeaderListViewState();
}

class _HomeViewHeaderListViewState extends State<HomeViewHeaderListView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: HomeViewHeaderListView.homeCategoriesList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          updateSelectedIndex(index);
        },
        child: buildListItem(selectedIndex == index,
            HomeViewHeaderListView.homeCategoriesList[index]),
      ),
    );
  }

  void updateSelectedIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget buildListItem(bool isSelected, String title) {
    const Decoration activeDecoration = BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Colors.black,
          width: 3,
        ),
      ),
    );

    final Color color =
        isSelected ? AppColors.contentPrimary : AppColors.contentTeritary;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      margin: const EdgeInsets.only(right: 32),
      decoration: isSelected ? activeDecoration : const BoxDecoration(),
      child: Text(
        title,
        style: AppTextStyle.styleHeading3Medium(context).copyWith(color: color),
      ),
    );
  }
}
