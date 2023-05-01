import 'package:flutter/material.dart';
import 'package:mbhagri/pages/propose_product_page.dart';
import 'package:mbhagri/utils/colors.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
              pageBuilder: (_, __, ___) => const ProposeProductPage()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Primary,
        padding: const EdgeInsets.all(5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.75,
        height: 50,
        color: Primary,
        margin: const EdgeInsets.all(3),
        padding: const EdgeInsets.all(0),
        child: Row(
          children: const [
            Icon(Icons.add),
            Text("Proposer un produit"),
          ],
        ),
      ),
    );
  }
}
