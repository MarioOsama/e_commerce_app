import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomSocialMediaAuth extends StatelessWidget {
  final String imagePath;

  const CustomSocialMediaAuth({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, right: 20, left: 20),
      child: SvgPicture.asset(
        imagePath,
        height: 40,
      ),
    );
  }
}
