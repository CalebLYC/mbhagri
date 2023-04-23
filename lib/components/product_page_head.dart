import 'package:flutter/material.dart';
import 'package:mbhagri/models/Produit.dart';

class ProductPageHead extends StatelessWidget {
  const ProductPageHead({super.key, required this.product});
  final Produit product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(product.image),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite_outline,
                    color: Colors.pink,
                    size: 40,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
