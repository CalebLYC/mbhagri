import 'package:flutter/material.dart';
import 'package:mbhagri/models/ProductType.dart';
import 'package:mbhagri/utils/colors.dart';

class CarousselItem extends StatelessWidget {
  const CarousselItem({super.key, required this.type});
  final ProductType type;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(type.image),
              fit: BoxFit.cover,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              type.libele,
              style: TextStyle(
                color: Black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //child: Image.asset("assets/images/types/cereales.webp"),
        ),
      ],
    );
  }
}
