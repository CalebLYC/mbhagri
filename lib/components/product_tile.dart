import 'package:flutter/material.dart';
import 'package:mbhagri/models/Produit.dart';
import 'package:mbhagri/pages/ask_shipping_page.dart';

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
      onTap: (() {
        setState(() {
          showDialog = !showDialog;
        });
      }),
      child: Column(
        children: [
          showDialog
              ? Dialog(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder: (_, __, ___) =>
                                AskShippingPage(product: product),
                          ),
                        ),
                        child: const Text(
                          'Faire une demande de transport',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Text(""),
          ListTile(
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
            title: Text("Kara"),
            subtitle: Text("10 tonnes de maïs"),
            trailing: const Icon(Icons.location_on),
          )
        ],
      ),
    );
  }
}
