import 'package:flutter/material.dart';
import 'package:mbhagri/pages/filter_page.dart';
import 'package:mbhagri/pages/search_page.dart';
import 'package:mbhagri/utils/colors.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.6,
        padding: const EdgeInsets.all(5),
        height: 35,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.white),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Rechercher...",
            hintStyle: const TextStyle(fontFamily: 'Poppins', fontSize: 16),
            suffixIcon: IconButton(
              onPressed: () => Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ____) => const FilterPage(),
                ),
              ),
              icon: Wrap(
                children: const [
                  Icon(Icons.filter),
                  Text(
                    "Filtrer",
                    style: TextStyle(fontFamily: 'Poppins'),
                  ),
                ],
              ),
            ),
          ),
          cursorColor: Black,
          //textAlign: TextAlign.center,
          style: TextStyle(color: Black),
          onTap: () => Navigator.push(
            context,
            PageRouteBuilder(pageBuilder: (_, __, ___) => const SearchPage()),
          ),
        ),
      ),
    );
  }
}
