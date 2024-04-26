import 'package:e_commerce_app/features/on_bording/widgets/next_page_widget.dart';
import 'package:e_commerce_app/features/on_bording/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class Foter extends StatelessWidget {
  const Foter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: 250,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // * Title, Subtitle
          TextWidget(),
          SizedBox(
            height: 20,
          ),
          // * Next Page Button, DotIndicator
          Expanded(
            child: NextPageWidget(),
          ),
        ],
      ),
    );
  }
}
