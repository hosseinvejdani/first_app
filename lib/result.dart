import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  const Result({Key? key, required this.totalScore, required this.resetHandler})
      : super(key: key);

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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            quizeResult,
            style: TextStyle(fontSize: 25.0),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: resetHandler,
          // style: ButtonStyle(
          //     backgroundColor: MaterialStateProperty.all(Colors.amber)),
          style: ElevatedButton.styleFrom(
              primary: Colors.amber, onPrimary: Colors.white),
          child: Text(
            'reset Quiz!',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        TextButton(
          onPressed: resetHandler,
          // style: ButtonStyle(
          //     foregroundColor: MaterialStateProperty.all(Colors.redAccent)),
          style: TextButton.styleFrom(primary: Colors.redAccent),
          child: Text(
            'reset Quiz!',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        OutlinedButton(
          onPressed: resetHandler,
          style: OutlinedButton.styleFrom(
              primary: Colors.amber,
              side: BorderSide(width: 2.0, color: Colors.amber)),
          child: Text(
            'reset Quiz!',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }
}
