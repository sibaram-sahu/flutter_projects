import 'package:flutter/material.dart';

class StyleText extends StatelessWidget {
  final String text;
  final Color color;
  final double size;

  const StyleText(this.text, this.color, this.size, {super.key});
  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: size,
      ),
    );
  }
}
