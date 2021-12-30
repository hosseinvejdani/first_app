import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;
  const Result({required this.totalScore, required this.resetQuiz, Key? key})
      : super(key: key);

  int get finalScore {
    return totalScore;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You did it with score : $finalScore!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: resetQuiz,
            child: Text('reset quiz!'),
            style: TextButton.styleFrom(
                textStyle: TextStyle(fontSize: 20, color: Colors.redAccent)),
          )
        ],
      ),
    );
  }
}
