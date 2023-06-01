import 'package:assignment_13/data/answer.dart';
import 'package:flutter/material.dart';

import '../data/question.dart';

class QuestionScreenWidget extends StatefulWidget {
  final List<Question> questions = [];
  QuestionScreenWidget({
    super.key,
  }) {
    questions.add(Question(
        question: 'question',
        category: 'category',
        imageURL: 'imageURL',
        answers: [
          Answer(answer: 'answer', isCorrect: true),
          Answer(answer: 'answer', isCorrect: true),
          Answer(answer: 'answer', isCorrect: true),
        ]));
  }

  @override
  State<QuestionScreenWidget> createState() => _QuestionScreenWidgetState();
}

class _QuestionScreenWidgetState extends State<QuestionScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
