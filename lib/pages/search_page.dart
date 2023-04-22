import 'package:flutter/material.dart';
import 'package:mbhagri/utils/colors.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();

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
            decoration: const InputDecoration(
              border: InputBorder.none,
              icon: Icon(Icons.search),
            ),
            cursorColor: Black,
            //textAlign: TextAlign.center,
            style: TextStyle(color: Black),
            onChanged: (value) {},
          ),
        ),
      )),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
