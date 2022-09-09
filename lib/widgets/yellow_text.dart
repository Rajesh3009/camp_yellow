import 'package:flutter/material.dart';

class YellowText extends StatelessWidget {
  const YellowText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.yellow,
        // fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
    );
  }
}
