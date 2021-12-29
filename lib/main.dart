import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qindex = 0;
  final _questions = [
    {
      'qText': 'what is your favorite color?',
      'qAns': [
        {'ansText': 'blue', 'ansScore': 4},
        {'ansText': 'green', 'ansScore': 3},
        {'ansText': 'red', 'ansScore': 2},
        {'ansText': 'black', 'ansScore': 1},
      ],
    },
    {
      'qText': 'what is your favorite Car?',
      'qAns': [
        {'ansText': 'Benz', 'ansScore': 4},
        {'ansText': 'BMW', 'ansScore': 3},
        {'ansText': 'Tesla', 'ansScore': 2},
        {'ansText': 'Suzuki', 'ansScore': 1},
      ]
    },
    {
      'qText': 'what is your favorite City?',
      'qAns': [
        {'ansText': 'Vancuver', 'ansScore': 4},
        {'ansText': 'Halifax', 'ansScore': 3},
        {'ansText': 'Toronto', 'ansScore': 2},
        {'ansText': 'Newyork', 'ansScore': 1},
      ]
    },
    {
      'qText': 'what is your favorite sport?',
      'qAns': [
        {'ansText': 'football', 'ansScore': 4},
        {'ansText': 'tenis', 'ansScore': 3},
        {'ansText': 'swimming', 'ansScore': 2},
        {'ansText': 'running', 'ansScore': 1},
      ]
    }
  ];

  // ignore: unused_field
  var _totalScore = 0;

  void _chooseOption(int score) {
    _totalScore += score;

    setState(() {
      _qindex = _qindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My app'),
        ),
        body: (_qindex < _questions.length)
            ? Quiz(
                chooseOption: _chooseOption,
                questions: _questions,
                qindex: _qindex,
              )
            : Result(totalScore: _totalScore),
      ),
    );
  }
}
