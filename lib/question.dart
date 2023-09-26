import 'package:first_app/data/sample_questions.dart';
import 'package:first_app/shared/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions({super.key, required this.onSelectedAnswer});

  final void Function(String answer) onSelectedAnswer;

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  var currentQuestionIndex = 0;
  void answerdQuestion(selectedAnswers) {
  widget.onSelectedAnswer(selectedAnswers);
    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(context) {
    final questionsList = questionList[currentQuestionIndex];
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                questionsList.text,
                style: GoogleFonts.merriweatherSans(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              ...questionsList.getShuffledAnswers().map((answer) {
                return AnswerButton(answer: answer, onTap: () {
                  answerdQuestion(answer);
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}
