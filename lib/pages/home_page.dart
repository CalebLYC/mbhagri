import 'package:flutter/material.dart';
import 'package:mbhagri/components/commands.dart';
import 'package:mbhagri/components/head_caroussel.dart';
import 'package:mbhagri/components/products_type_caroussel.dart';
import 'package:mbhagri/utils/colors.dart';
import 'package:mbhagri/utils/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const HeadCaroussel(),
            const ProductTypesCaroussel(),
            Padding(
              padding: const EdgeInsets.all(4),
              child: Text(
                "Dernières commandes",
                style: TextStyle(
                  fontFamily: 'Poppins',
                  color: Black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Commands(produits: produits),
          ],
        ),
      ),
    );
  }
}
