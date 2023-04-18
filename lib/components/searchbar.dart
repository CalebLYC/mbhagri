import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
      padding: const EdgeInsets.all(10),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.075,
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: TextField(
          decoration: null,
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
