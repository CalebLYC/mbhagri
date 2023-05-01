import 'package:flutter/material.dart';
import 'package:mbhagri/components/product_map.dart';
import 'package:mbhagri/models/Produit.dart';

class ProductMapCard extends StatelessWidget {
  const ProductMapCard({super.key, required this.product});
  final Produit product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.45,
      margin: const EdgeInsets.all(5),
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: const [
                  Icon(
                    Icons.location_on,
                    size: 25,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Kara",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontStyle: FontStyle.italic,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
            ProductMap(product: product),
          ],
        ),
      ),
    );
  }
}
