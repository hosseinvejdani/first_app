import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback handler;
  final String answer;
  const Answer({Key? key, required this.handler, required this.answer})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(50.0, 5.0, 50.0, 5.0),
      child: ElevatedButton(
        onPressed: handler,
        child: Text(
          answer,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
