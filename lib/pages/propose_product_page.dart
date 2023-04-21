import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mbhagri/components/field.dart';

class ProposeProductPage extends StatefulWidget {
  const ProposeProductPage({super.key});

  @override
  State<ProposeProductPage> createState() => _ProposeProductPageState();
}

class _ProposeProductPageState extends State<ProposeProductPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController priceController = TextEditingController();
  final TextEditingController quantityController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Field(controller: nameController, text: "Nom du produit"),
            Field(
                controller: descriptionController,
                text: "Description du produit"),
            Field(controller: priceController, text: "Prix du produit"),
            Field(controller: quantityController, text: "Quantité du produit"),
            Field(controller: locationController, text: "Localité"),
          ],
        ),
      ),
    );
  }
}
