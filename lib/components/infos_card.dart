import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mbhagri/models/Produit.dart';
import 'package:mbhagri/utils/colors.dart';

class InfosCard extends StatelessWidget {
  const InfosCard({super.key, required this.product});
  final Produit product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      margin: const EdgeInsets.all(5),
      child: Card(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    product.prix.toString(),
                    style: TextStyle(
                      color: Primary,
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.assignment_turned_in,
                      color: Primary,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: const [
                      Icon(
                        Icons.access_time,
                        size: 15,
                      ),
                      Text(
                        "27 avril 2023",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: const [
                      Icon(
                        Icons.location_on,
                        size: 15,
                      ),
                      Text(
                        "Kara",
                        style: TextStyle(
                          fontFamily: 'Lato',
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                product.description,
                style: const TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 15,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
