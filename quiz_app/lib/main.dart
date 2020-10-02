import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  /* var questionVar = [
    'what is your fav color',
    'what is your fav animal',
    'what is your fav country',
    'what is your fav country',
  ]; */

  var questionVar = [
    {
      'questionText': 'What is your favorite Color',
      'answer': ['Blue', 'Black', 'Red', 'Green'],
    },
    {
      'questionText': 'What is your favorite Country',
      'answer': ['India', 'Australia', 'USA', 'Japan', 'Korean'],
    },
    {
      'questionText': 'What is your favorite Animal',
      'answer': ['Dog', 'Cat', 'Horse', 'Lion'],
    },
    {
      'questionText': 'What is your favorite Game',
      'answer': ['Pubg', 'COD', 'Fortnite', 'NFS'],
    },
  ];

  void changeValue() {
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Center(
            child: Column(
              children: [
                Question(
                  questionVar[questionIndex]['questionText'],
                ),
                ...(questionVar[questionIndex]['answer'] as List<String>)
                    .map((answer) {
                  return Answer(answer, changeValue);
                })
                /* Answer('Answer 1', changeValue),
                Answer('Answer 2', changeValue),
                Answer('Answer 3', changeValue), */
                /* RaisedButton(
                  child: Text('Answer 2'),
                  onPressed: changeValue,
                ),
                RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: changeValue,
                ), */
              ],
            ),
          )),
    );
  }
}
