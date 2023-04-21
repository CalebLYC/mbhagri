import 'package:flutter/material.dart';
import 'package:mbhagri/utils/colors.dart';

class Field extends StatelessWidget {
  const Field({super.key, required this.controller, required this.text});
  final TextEditingController controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            border: Border.all(),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Primary,
                blurRadius: 1,
                spreadRadius: 0.2,
                offset: Offset(0, 1),
              ),
            ]),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            hintText: text,
            hintStyle: const TextStyle(fontSize: 16),
          ),
          style: TextStyle(color: Black),
          cursorColor: Black,
        ),
      ),
    );
  }
}
