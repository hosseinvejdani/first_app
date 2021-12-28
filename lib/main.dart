import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var qindex = 0;
  var questions = [
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
      qindex = qindex + 1;
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
        body: (qindex < questions.length)
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Question(questions[qindex]['qText'] as String),
                  ...(questions[qindex]['qAns'] as List).map(
                    (answer) {
                      return Answer(
                        handler: _chooseOption,
                        answer: answer,
                      );
                    },
                  ).toList(),
                ],
              )
            : Center(
                child: Text(
                  'You did it!!',
                  style: TextStyle(fontSize: 30.0),
                ),
              ),
      ),
    );
  }
}
