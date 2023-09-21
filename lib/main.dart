import 'package:first_app/gradiant_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 107, 230, 247),
          Color.fromARGB(255, 113, 98, 255),
        ]),
      ),
    ),
  );
}
