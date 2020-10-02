import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Row(
        children: [
          Text('1'),
          Text('1'),
          Text('1'),
          Text('1'),
          Column(
            children: [
              Text('Col'),
              Text('Col'),
              Text('Col'),
              Text('Col'),
              Text('Col'),
            ],
          )
        ],
      ),
    ));
  }
}
