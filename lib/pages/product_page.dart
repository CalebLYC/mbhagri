import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mbhagri/components/infos_card.dart';
import 'package:mbhagri/components/product_map_card.dart';
import 'package:mbhagri/components/product_page_head.dart';
import 'package:mbhagri/components/produicer_card.dart';
import 'package:mbhagri/models/Produit.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.product});
  final Produit product;

  @override
  State<ProductPage> createState() => _ProductPageState(product);
}

class _ProductPageState extends State<ProductPage> {
  _ProductPageState(this.product);
  final Produit product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProductPageHead(product: product),
              InfosCard(product: product),
              ProductMapCard(product: product),
              ProduicerCard(product: product),
            ],
          ),
        ),
      ),
    );
  }
}
