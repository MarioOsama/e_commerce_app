import 'package:e_commerce_app/core/utils/helpers/spacing.dart';
import 'package:e_commerce_app/core/utils/models/product_model.dart';
import 'package:e_commerce_app/features/home/views/widgets/deals_section_card.dart';
import 'package:e_commerce_app/features/home/views/widgets/deals_section_card_indicators_row.dart';
import 'package:e_commerce_app/features/home/views/widgets/deals_section_header.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeViewDealsSection extends StatefulWidget {
  const HomeViewDealsSection({
    super.key,
  });

  final List<ProductModel> products = const [
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Microphones',
      name: 'RØDE PodMic',
      price: 108.20,
      description: 'Dynamic microphone, Speaker microphone',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      oldPrice: 199.99,
      rating: 4.5,
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Microphones',
      name: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      rating: 4.5,
    ),
    ProductModel(
      images: ['assets/img/Sony_Headphones_01.png'],
      category: 'Microphones',
      name: 'RØDE PodMic',
      price: 349.99,
      description: 'Dynamic microphone, Speaker microphone',
      subCategories: ['Dynamic microphone', 'Speaker microphone'],
      rating: 4.5,
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
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const DealsSectionHeader(),
        ExpandablePageView.builder(
          controller: _pageController,
          allowImplicitScrolling: true,
          animateFirstPage: true,
          scrollDirection: Axis.horizontal,
          itemCount: widget.products.length,
          itemBuilder: (context, index) {
            return DealsSectionCard(
              product: widget.products[index],
            );
          },
        ),
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
