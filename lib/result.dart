import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  const Result({Key? key, required this.totalScore}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'You did it with score $totalScore!!',
        style: TextStyle(fontSize: 25.0),
      ),
    );
  }
}
