import 'package:flutter/material.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({super.key, this.iconSize, this.isSelected});

  final double? iconSize;
  final bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      isSelected: isSelected,
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.white),
      ),
      icon: Icon(
        Icons.favorite,
        size: iconSize,
      ),
      alignment: AlignmentDirectional.center,
    );
  }
}
