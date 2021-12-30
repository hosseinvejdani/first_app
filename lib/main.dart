import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qindex = 0;
  var _totalScore = 0;
  final _questions = [
    {
      'title': 'what is your favored color?',
      'options': [
        {'optionText': 'blue', 'optionScore': 4},
        {'optionText': 'green', 'optionScore': 3},
        {'optionText': 'yellow', 'optionScore': 2},
        {'optionText': 'red', 'optionScore': 1},
      ],
    },
    {
      'title': 'what is your favored city?',
      'options': [
        {'optionText': 'vancuver', 'optionScore': 4},
        {'optionText': 'toronto', 'optionScore': 3},
        {'optionText': 'halifax', 'optionScore': 2},
        {'optionText': 'prince edward', 'optionScore': 1},
      ],
    },
    {
      'title': 'what is your favored car company?',
      'options': [
        {'optionText': 'Benz', 'optionScore': 4},
        {'optionText': 'BMW', 'optionScore': 3},
        {'optionText': 'Tesla', 'optionScore': 2},
        {'optionText': 'Toyota', 'optionScore': 1},
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _qindex = 0;
    });
  }

  void _optionHandler(int score) {
    setState(() {
      _totalScore += score;
      _qindex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          centerTitle: true,
          title: Text('Simple Quiz App!'),
        ),
        body: Center(
          child: _qindex < _questions.length
              ? Quiz(
                  questions: _questions,
                  qindex: _qindex,
                  optionHandler: _optionHandler,
                )
              : Result(totalScore: _totalScore, resetQuiz: _resetQuiz),
        ),
      ),
    );
  }
}
