import 'package:e_commerce_app/features/home/views/widgets/card_indicator.dart';
import 'package:flutter/material.dart';

class DealsSectionCardIndicatorsRow extends StatelessWidget {
  const DealsSectionCardIndicatorsRow({
    super.key,
    required this.activeIndex,
    required this.length,
  });

  final int activeIndex;
  final int length;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
          length,
          (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: Indicator(isActive: activeIndex == index),
              )),
    );
  }
}
