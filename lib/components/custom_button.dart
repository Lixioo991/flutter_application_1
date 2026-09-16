import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function() onPressed;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          const Color.fromARGB(255, 33, 243, 103),
        ),
      ),
      onPressed: onPressed,
      child: Text(buttonText, style: const TextStyle(color: Colors.white)),
    );
  }
}
