import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  Question(this.question);
  @override
  Widget build(BuildContext context) {
    return Text(
      this.question,
      style: TextStyle(fontSize: 25.0),
    );
  }
}
