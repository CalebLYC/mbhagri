import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mbhagri/models/Produit.dart';

class ProductMap extends StatefulWidget {
  const ProductMap({super.key, required this.product});
  final Produit product;

  @override
  State<ProductMap> createState() => _ProductMapState(product);
}

class _ProductMapState extends State<ProductMap> {
  _ProductMapState(this.product);
  final Produit product;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
