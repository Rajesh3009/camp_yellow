import 'package:flutter/material.dart';

class PinkText extends StatelessWidget {
  const PinkText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: Colors.pink.shade700,
        // fontWeight: FontWeight.bold,
        fontSize: 22,
        // overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
