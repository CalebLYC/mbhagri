import 'package:flutter/material.dart';
import 'package:mbhagri/components/field.dart';
import 'package:mbhagri/models/Produit.dart';

class AskShippingPage extends StatefulWidget {
  AskShippingPage({super.key, required this.product});
  final Produit product;

  @override
  State<AskShippingPage> createState() => _AskShippingPageState(product);
}

class _AskShippingPageState extends State<AskShippingPage> {
  _AskShippingPageState(this.product);
  final Produit product;

  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Faire une demande de transport"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [Field(controller: nameController, text: "Nom")],
          ),
        ),
      ),
    );
  }
}
