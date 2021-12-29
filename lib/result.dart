import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  const Result({Key? key, required this.totalScore}) : super(key: key);

  String get quizeResult {
    String msg;
    if (totalScore <= 5) {
      msg = '<$totalScore> : You get bad score from quiz!';
    } else if (totalScore <= 10) {
      msg = '<$totalScore> : You get modrate score from quiz!';
    } else if (totalScore <= 15) {
      msg = '<$totalScore> : You get good score from quiz!';
    } else {
      msg = '<$totalScore> : You get excellent score from quiz!';
    }
    return msg;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        quizeResult,
        style: TextStyle(fontSize: 25.0),
      ),
    );
  }
}
