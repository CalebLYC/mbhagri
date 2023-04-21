import 'package:flutter/material.dart';
import 'package:mbhagri/components/product_tile.dart';
import 'package:mbhagri/models/Produit.dart';

class Commands extends StatefulWidget {
  const Commands({super.key, required this.produits});
  final List<Produit> produits;

  @override
  State<Commands> createState() => _CommandsState(produits);
}

class _CommandsState extends State<Commands> {
  _CommandsState(this.produits);
  final List<Produit> produits;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView.builder(
        itemCount: produits.length,
        itemBuilder: (context, index) => ProductTile(product: produits[index]),
      ),
    );
  }
}
