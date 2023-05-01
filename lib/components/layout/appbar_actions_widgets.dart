import 'package:flutter/material.dart';
import 'package:mbhagri/pages/filter_page.dart';
import 'package:mbhagri/pages/search_page.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(pageBuilder: (_, __, ___) => const SearchPage()),
        );
      },
      icon: const Icon(Icons.search),
      iconSize: 30,
    );
  }
}

class FilterIcon extends StatelessWidget {
  const FilterIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(pageBuilder: (_, __, ___) => const FilterPage()),
        );
      },
      icon: const Icon(Icons.filter),
      iconSize: 30,
    );
  }
}
