import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(context) {
    return SizedBox(
      height: 600,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Card(
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            data['user_answer'] == data['correct_answer']
                                ? Colors.greenAccent
                                : Colors.redAccent),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(const CircleBorder())),
                    child:
                        Text(((data['question_index'] as int) + 1).toString()),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                      ),
                      const SizedBox(height: 5),
                      if (data['user_answer'] != data['correct_answer'])
                        Text(
                          data['user_answer'] as String,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                            decoration: TextDecoration.lineThrough,
                            overflow: TextOverflow.ellipsis,
                            color: Colors.redAccent,
                          ),
                        ),
                      Text(
                        data['correct_answer'] as String,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: const TextStyle(color: Colors.greenAccent),
                      ),
                      const Divider(
                        color: Colors.white,
                        height: 2,
                      ),
                      const SizedBox(height: 5),
                    ],
                  )
                ],
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
