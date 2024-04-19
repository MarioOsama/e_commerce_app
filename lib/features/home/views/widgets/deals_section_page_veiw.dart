import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/features/home/views/widgets/deals_section_card.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class DealsSectionPageView extends StatelessWidget {
  const DealsSectionPageView({
    super.key,
    required PageController pageController,
    required this.products,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<ProductModel> products;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
      controller: _pageController,
      allowImplicitScrolling: true,
      animateFirstPage: true,
      scrollDirection: Axis.horizontal,
      itemCount: products.length,
      itemBuilder: (context, index) {
        return DealsSectionCard(
          product: products[index],
        );
      },
    );
  }
}
