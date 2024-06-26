import 'dart:async';

import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/features/home/views/widgets/deals_section_card_indicators_row.dart';
import 'package:e_commerce_app/features/home/views/widgets/deals_section_header.dart';
import 'package:e_commerce_app/features/home/views/widgets/deals_section_page_veiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewDealsSection extends StatefulWidget {
  const HomeViewDealsSection({
    super.key,
  });

  final List<Product> products = const [
    Product(
      id: 1,
      image: 'assets/img/Sony_Headphones_01.png',
      category: 'Headphones',
      title: 'RØDE PodMic',
      price: 108.20,
      description: 'Dynamic microphone, Speaker microphone',
      oldPrice: 199.99,
    ),
    Product(
      id: 2,
      image: 'assets/img/Sony_Headphones_01.png',
      category: 'Headphones',
      title: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
    ),
    Product(
      id: 3,
      image: 'assets/img/Sony_Headphones_01.png',
      category: 'Headphones',
      title: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
    ),
  ];

  @override
  State<HomeViewDealsSection> createState() => _HomeViewDealsSectionState();
}

class _HomeViewDealsSectionState extends State<HomeViewDealsSection> {
  late PageController _pageController;
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        activeIndex = _pageController.page!.round();
      });
    });

    // Start the animation
    _animatePageView();
  }

  void _animatePageView() {
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (activeIndex < widget.products.length - 1) {
        activeIndex++;
      } else {
        activeIndex = 0;
      }
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          activeIndex,
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DealsSectionHeader(),
        DealsSectionPageView(
            pageController: _pageController, products: widget.products),
        verticalSpace(6),
        DealsSectionCardIndicatorsRow(
          activeIndex: activeIndex,
          length: widget.products.length,
        )
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
