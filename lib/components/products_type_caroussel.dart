import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mbhagri/utils/colors.dart';

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
      child: CarouselSlider(
        items: [
          Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: MediaQuery.of(context).size.height * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/types/cereales.webp"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Céréales",
                    style: TextStyle(
                      color: Black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                //child: Image.asset("assets/images/types/cereales.webp"),
              ),
            ],
          ),
        ],
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
