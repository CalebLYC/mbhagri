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
        title: const Text("Kara"),
        subtitle: const Text("10 tonnes de maïs"),
        trailing: IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
        ),
      )),
    );
  }
}
