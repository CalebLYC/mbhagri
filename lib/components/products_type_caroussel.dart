import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mbhagri/components/caroussel_item.dart';
import 'package:mbhagri/utils/colors.dart';
import 'package:mbhagri/utils/data.dart';

class ProductTypesCaroussel extends StatefulWidget {
  const ProductTypesCaroussel({super.key});

  @override
  State<ProductTypesCaroussel> createState() => _ProductTypesCarousselState();
}

class _ProductTypesCarousselState extends State<ProductTypesCaroussel> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  bool _pageHasContentDimensions = false;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (_pageController.position.hasContentDimensions &&
          !_pageHasContentDimensions) {
        setState(() {
          _pageHasContentDimensions = true;
        });
      }
      setState(() {
        _currentPage = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: CarouselSlider.builder(
        itemCount: types.length,
        itemBuilder: (context, index, realIndex) =>
            CarousselItem(type: types[index]),
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height * 0.3,
          enableInfiniteScroll: true,
          viewportFraction: 0.7,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 5),
          onPageChanged: (index, reason) {
            setState(() {
              _currentPage = index;
            });
          },
        ),
      ),
    );
  }
}
