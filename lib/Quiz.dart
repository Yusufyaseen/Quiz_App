import 'package:flutter/material.dart';
import './answers.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  Quiz(
      {@required this.answerQuestions,
      @required this.questions,
      @required this.quizIndex});
  final int quizIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestions;

  @override
  Widget build(BuildContext context) {
    var rightAnswer = questions[quizIndex]['right'];
    return Column(
      children: [
        Questions(
          questions[quizIndex]['question'],
        ),
        ...(questions[quizIndex]['answers'] as List<String>).map((answer) {
          return Answers(answerQuestions, answer, rightAnswer);
        }).toList(),
      ],
    );
  }
}
