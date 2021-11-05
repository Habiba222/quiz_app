import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final questions;
  final Function answerQuestion;
  final int questionIndex;

  const Quiz(
      {Key? key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answer'] as List<Map<String, dynamic>>)
            .map((answer) {
          return Answer(
              () => answerQuestion(int.parse(answer['score'])), answer['text']);
        }).toList()
      ],
    );
  }
}

