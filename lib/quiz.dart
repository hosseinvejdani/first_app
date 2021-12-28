import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int qindex;
  final List questions;
  final Function chooseOption;

  const Quiz({
    Key? key,
    required this.qindex,
    required this.questions,
    required this.chooseOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Question(questions[qindex]['qText'] as String),
        ...(questions[qindex]['qAns'] as List).map(
          (answer) {
            return Answer(
              handler: () => chooseOption(answer['ansScore']),
              answer: answer['ansText'],
            );
          },
        ).toList(),
      ],
    );
  }
}
