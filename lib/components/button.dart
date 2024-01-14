import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onPressed;

  const Button({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        textStyle: const TextStyle(
          fontSize: 25,
        ),
        backgroundColor: const Color(0xff00072c),
        padding: const EdgeInsetsDirectional.all(20),
      ),
      child: const Text(
        "Roll dice!",
      ),
    );
  }
}
