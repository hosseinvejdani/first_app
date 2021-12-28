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
      'qAns': ['blue', 'green', 'red', 'black'],
    },
    {
      'qText': 'what is your favorite Car?',
      'qAns': ['Benz', 'BMW', 'Tesla', 'Suzuki'],
    },
    {
      'qText': 'what is your favorite City?',
      'qAns': ['Vancuver', 'Halifax', 'Toronto', 'Newyork'],
    },
    {
      'qText': 'what is your favorite sport?',
      'qAns': ['football', 'tenis', 'swimming', 'running'],
    }
  ];

  void _chooseOption() {
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
            : Result(),
      ),
    );
  }
}
