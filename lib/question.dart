import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String title;
  const Question(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(20.0),
    );
  }
}
