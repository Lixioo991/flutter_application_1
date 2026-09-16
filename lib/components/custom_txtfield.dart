import 'package:flutter/material.dart';

class CustomTxtfield extends StatelessWidget {
  final TextEditingController txtController;
  final String hint;

  const CustomTxtfield({
    super.key,
    required this.txtController,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: txtController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        hintText: hint,
      ),
    );
  }
}
