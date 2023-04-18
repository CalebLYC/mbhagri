import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Commands extends StatefulWidget {
  const Commands({super.key});

  @override
  State<Commands> createState() => _CommandsState();
}

class _CommandsState extends State<Commands> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: ListView(
        children: [
          ListTile(
            leading: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
              ),
              child: Image.asset(
                "assets/images/types/tubercules.jpg",
                width: 70,
                height: 70,
              ),
            ),
            title: Text("Kara"),
            subtitle: Text("10 tonnes de maïs"),
            trailing: const Icon(Icons.location_on),
          ),
        ],
      ),
    );
  }
}
