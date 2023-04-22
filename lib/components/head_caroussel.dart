import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mbhagri/utils/colors.dart';
import 'package:mbhagri/utils/data.dart';

class HeadCaroussel extends StatefulWidget {
  const HeadCaroussel({super.key});

  @override
  State<HeadCaroussel> createState() => _HeadCarousselState();
}

class _HeadCarousselState extends State<HeadCaroussel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.17,
      padding: const EdgeInsets.all(3),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: CarouselSlider.builder(
          itemCount: headItems.length,
          itemBuilder: (context, index, realIndex) {
            final item = headItems[index];
            return Card(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.15,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(2),
                      child: Icon(
                        item['icon'],
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2),
                      child: Text(
                        item['libele'].toString(),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.15,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(milliseconds: 1000),
            autoPlayCurve: Curves.fastOutSlowIn,
            viewportFraction: 0.4,
          ),
        ),
      ),
    );
  }
}
