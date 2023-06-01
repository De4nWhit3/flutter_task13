import 'package:assignment_13/data/answer.dart';
import 'package:flutter/material.dart';

import '../data/question.dart';

class QuestionScreenWidget extends StatefulWidget {
  final List<Question> questions = [];
  QuestionScreenWidget({
    super.key,
  }) {
    questions.add(Question(
        question: 'What nutrients does a watermelon provide?',
        category: 'fruit',
        imageURL: 'assets/watermelon.jpeg',
        answers: [
          Answer(answer: 'option 1', isCorrect: true),
          Answer(answer: 'option 2', isCorrect: true),
          Answer(answer: 'option 3', isCorrect: true),
        ]));
    questions.add(Question(
        question: 'What nutrients does a strawberry provide?',
        category: 'fruit',
        imageURL: 'assets/strawberry.jpg',
        answers: [
          Answer(answer: 'option 1', isCorrect: true),
          Answer(answer: 'option 2', isCorrect: true),
          Answer(answer: 'option 3', isCorrect: true),
        ]));
    questions.add(Question(
        question: 'What nutrients does a pineapple provide?',
        category: 'fruit',
        imageURL: 'assets/pineapple.jpg',
        answers: [
          Answer(answer: 'option 1', isCorrect: true),
          Answer(answer: 'option 2', isCorrect: true),
          Answer(answer: 'option 3', isCorrect: true),
        ]));
    questions.add(Question(
        question: 'What nutrients does a pear provide?',
        category: 'fruit',
        imageURL: 'assets/pear.jpg',
        answers: [
          Answer(answer: 'option 1', isCorrect: true),
          Answer(answer: 'option 2', isCorrect: true),
          Answer(answer: 'option 3', isCorrect: true),
        ]));
    questions.add(Question(
        question: 'What nutrients does a peach provide?',
        category: 'fruit',
        imageURL: 'assets/peach.jpg',
        answers: [
          Answer(answer: 'option 1', isCorrect: true),
          Answer(answer: 'option 2', isCorrect: true),
          Answer(answer: 'option 3', isCorrect: true),
        ]));
    questions.add(Question(
        question: 'What nutrients does a orange provide?',
        category: 'fruit',
        imageURL: 'assets/orange.jpg',
        answers: [
          Answer(answer: 'option 1', isCorrect: true),
          Answer(answer: 'option 2', isCorrect: true),
          Answer(answer: 'option 3', isCorrect: true),
        ]));
    questions.add(Question(
        question: 'What nutrients does a cantaloupe provide?',
        category: 'fruit',
        imageURL: 'assets/cantaloupe.jpg',
        answers: [
          Answer(answer: 'option 1', isCorrect: true),
          Answer(answer: 'option 2', isCorrect: true),
          Answer(answer: 'option 3', isCorrect: true),
        ]));
    questions.add(Question(
        question: 'What nutrients does a blueberry provide?',
        category: 'fruit',
        imageURL: 'assets/blueberry.jpg',
        answers: [
          Answer(answer: 'option 1', isCorrect: true),
          Answer(answer: 'option 2', isCorrect: true),
          Answer(answer: 'option 3', isCorrect: true),
        ]));
    questions.add(Question(
        question: 'What nutrients does a banana provide?',
        category: 'fruit',
        imageURL: 'assets/banana.jpg',
        answers: [
          Answer(answer: 'option 1', isCorrect: true),
          Answer(answer: 'option 2', isCorrect: true),
          Answer(answer: 'option 3', isCorrect: true),
        ]));
    questions.add(Question(
        question: 'What nutrients does an apple provide?',
        category: 'fruit',
        imageURL: 'assets/apple.jpg',
        answers: [
          Answer(answer: 'option 1', isCorrect: true),
          Answer(answer: 'option 2', isCorrect: true),
          Answer(answer: 'option 3', isCorrect: true),
        ]));
  }

  @override
  State<QuestionScreenWidget> createState() => _QuestionScreenWidgetState();
}

class _QuestionScreenWidgetState extends State<QuestionScreenWidget> {
  // bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 10,
        );
      },
      itemCount: widget.questions.length,
      itemBuilder: (context, index) {
        Question question = widget.questions[index];
        return Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 12, 145, 17),
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: Column(
            children: [
                  Text(
                    question.question,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    height: 150,
                    width: 300,
                    clipBehavior: Clip.antiAlias,
                    child: Image(
                      image: AssetImage(question.imageURL),
                      fit: BoxFit.fill,
                      height: double.infinity,
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ] +
                question.answers.map((answer) {
                  return FruitCheckbox(
                    answer: answer,
                  );
                }).toList(),
          ),
        );
      },
    );
  }
}

class FruitCheckbox extends StatefulWidget {
  final Answer answer;
  const FruitCheckbox({super.key, required this.answer});

  @override
  State<FruitCheckbox> createState() => _FruitCheckboxState();
}

class _FruitCheckboxState extends State<FruitCheckbox> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
          value: _selected,
          onChanged: (bool? value) {
            setState(() {
              _selected = value ?? false;
            });
          }),
      title: Text(
        widget.answer.answer,
      ),
    );
  }
}
