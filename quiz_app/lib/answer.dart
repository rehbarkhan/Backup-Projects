import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String buttonLabel;
  final Function eventHandler;
  Answer(this.buttonLabel, this.eventHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(20.0, 2.0, 20.0, 2.0),
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blueAccent,
        onPressed: eventHandler,
        child: Text(this.buttonLabel),
      ),
    );
  }
}
