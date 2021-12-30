import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int qindex;
  final Function optionHandler;
  const Quiz(
      {required this.questions,
      required this.qindex,
      required this.optionHandler,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      padding: EdgeInsets.only(top: 5, bottom: 5),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              questions[qindex]['title'] as String,
              style: TextStyle(fontSize: 20),
            ),
          ),
          ...(questions[qindex]['options'] as List).map((option) {
            return QuizOption(
              optionText: option['optionText'] as String,
              optionHandler: optionHandler,
              score: option['optionScore'] as int,
            );
          }),
        ],
      ),
    );
  }
}

class QuizOption extends StatelessWidget {
  final String optionText;
  final Function optionHandler;
  final int score;
  const QuizOption(
      {required this.optionText,
      required this.optionHandler,
      required this.score,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      padding: EdgeInsets.only(top: 3, bottom: 3),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => optionHandler(score),
        child: Text(optionText),
        style: ElevatedButton.styleFrom(
            primary: Colors.indigo,
            textStyle: TextStyle(fontSize: 18),
            padding: EdgeInsets.all(4)),
      ),
    );
  }
}
