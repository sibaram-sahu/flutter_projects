import 'package:first_app/data/sample_questions.dart';
import 'package:first_app/shared/questions_summary.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final List<String> chosenAnsers;
  const ResultScreen({super.key, required this.chosenAnsers});

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnsers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questionList[i].text,
        'correct_answer': questionList[i].answers[0],
        'user_answer': chosenAnsers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final totalQuestions = questionList.length;
    final correctQustions = summaryData.where((item) {
      return item["correct_answer"] == item['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 40, 20, 20),
        child: Column(
          children: [
            Text(
              "You answerd $correctQustions out of $totalQuestions questions correctly.",
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
            const SizedBox(height: 30),
            QuestionsSummary(getSummaryData()),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
