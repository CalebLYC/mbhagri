import 'package:flutter/material.dart';
import 'package:mbhagri/models/Produit.dart';
import 'package:mbhagri/pages/product_page.dart';

class ProductTile extends StatefulWidget {
  ProductTile({super.key, required this.product});
  final Produit product;

  @override
  State<ProductTile> createState() => _ProductTileState(product);
}

class _ProductTileState extends State<ProductTile> {
  _ProductTileState(this.product);
  final Produit product;
  bool showDialog = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (_, __, ___) => ProductPage(product: product),
        ),
      ),
      child: Card(
        child: ListTile(
          leading: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Image.asset(
              product.image,
              width: 70,
              height: 70,
            ),
          ),
          title: const Text(
            "Kara",
            style: TextStyle(
              fontFamily: 'Poppins',
            ),
          ),
          subtitle: Text(
            product.quantity,
            style: const TextStyle(
              fontFamily: 'Lato',
            ),
          ),
          trailing: PopupMenuButton<String>(
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'transport',
                child: Text('Demande de transport'),
              ),
              const PopupMenuItem<String>(
                value: 'favoris',
                child: Text('Ajouter aux favoris'),
              ),
            ],
            onSelected: (String value) {
              if (value == 'transport') {
                // Logique pour faire une demande de transport
              } else if (value == 'favoris') {
                // Logique pour ajouter aux favoris
              }
            },
          ),
        ),
      ),
    );
  }
}
