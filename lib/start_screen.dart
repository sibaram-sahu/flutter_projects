import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final void Function() startQuiz;
  const StartScreen(this.startQuiz, {super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz.png',
            height: 100,
          ),
          const SizedBox(height: 20),
          Text(
            "Learn anything on fun way",
            style: GoogleFonts.merriweather(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 40),
          FloatingActionButton.extended(
            onPressed: startQuiz,
            label: const Text("GET STARTED"),
            backgroundColor: const Color.fromARGB(255, 44, 4, 189),
            icon: const Icon(
              Icons.keyboard_arrow_right_outlined,
              size: 24,
            ),
          )
        ],
      ),
    );
  }
}
