import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter World',
      home: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hello Shiva!',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            Text(
              'Welcome to the flutter ride.',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    ),
  );
}
