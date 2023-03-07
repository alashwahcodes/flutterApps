import 'package:flutter/material.dart';

class MpassWordTextFormField extends StatelessWidget {
  const MpassWordTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          labelText: "Password",
          labelStyle: TextStyle(color: Colors.white, fontSize: 15)),
    );
  }
}
