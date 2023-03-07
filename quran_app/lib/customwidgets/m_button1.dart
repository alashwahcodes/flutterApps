// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Mbutton1 extends StatelessWidget {
  String name;
  Mbutton1(this.name, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(8),
      ),
      width: double.infinity,
      height: 55,
      child: Center(
        child: Text(
          name,
          style: const TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
    );
  }
}
