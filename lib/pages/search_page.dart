import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mbhagri/components/product_tile.dart';
import 'package:mbhagri/pages/product_page.dart';
import 'package:mbhagri/utils/colors.dart';
import 'package:mbhagri/utils/data.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchcontroller = TextEditingController();
  StreamController<String> _searchQuearyStream = StreamController<String>();
  Stream<String> get _searchQueary => _searchQuearyStream.stream;

  @override
  void dispose() {
    _searchcontroller.dispose();
    _searchQuearyStream.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Padding(
        padding: const EdgeInsets.all(1),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          padding: const EdgeInsets.all(5),
          height: 50,
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.white),
          child: TextField(
            controller: _searchcontroller,
            decoration: const InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.search),
              hintText: "Rechercher...",
            ),
            cursorColor: Black,
            //textAlign: TextAlign.center,
            style: TextStyle(color: Black),
            onChanged: (value) => _searchQuearyStream.add(value),
          ),
        ),
      )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              StreamBuilder<String>(
                  //key: UniqueKey(),
                  stream: _searchQueary,
                  builder: (context, snapshot) {
                    if (!snapshot.hasData || snapshot.data!.isEmpty) {
                      return Container(
                        height: MediaQuery.of(context).size.height,
                        child: ListView.builder(
                          itemCount: produits.length,
                          itemBuilder: (context, index) =>
                              ProductTile(product: produits[index]),
                        ),
                      );
                    }
                    var query = snapshot.data!.toLowerCase().trim();
                    var filteredData = produits
                        .where((produit) =>
                            produit.description
                                .toLowerCase()
                                .trim()
                                .contains(query) ||
                            produit.quantity
                                .toLowerCase()
                                .trim()
                                .contains(query))
                        .toList();
                    return Container(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        itemCount: filteredData.length,
                        itemBuilder: (context, index) {
                          final product = filteredData[index];
                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder: (_, __, ___) =>
                                    ProductPage(product: product),
                              ),
                            ),
                            child: Card(
                              child: ListTile(
                                leading: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50)),
                                  ),
                                  child: Image.asset(
                                    product.image,
                                    width: 70,
                                    height: 70,
                                  ),
                                ),
                                title: const Text(
                                  "Kara",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                subtitle: Text(
                                  product.quantity,
                                  style: const TextStyle(
                                    fontFamily: 'Lato',
                                  ),
                                ),
                                trailing: PopupMenuButton<String>(
                                  itemBuilder: (BuildContext context) =>
                                      <PopupMenuEntry<String>>[
                                    const PopupMenuItem<String>(
                                      value: 'transport',
                                      child: Text('Demande de transport'),
                                    ),
                                    const PopupMenuItem<String>(
                                      value: 'favoris',
                                      child: Text('Ajouter aux favoris'),
                                    ),
                                  ],
                                  onSelected: (String value) {
                                    if (value == 'transport') {
                                      // Logique pour faire une demande de transport
                                    } else if (value == 'favoris') {
                                      // Logique pour ajouter aux favoris
                                    }
                                  },
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
