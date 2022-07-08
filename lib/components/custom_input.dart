import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String placeholder;
  const CustomInput({Key? key, required this.placeholder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: placeholder,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(32.0)),
        ),
      ),
    );
  }
}
