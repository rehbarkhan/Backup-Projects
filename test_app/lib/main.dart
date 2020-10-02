import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _counter;
  void increment() {
    setState(() {
      _counter = 'You Clicked Button';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Column(
          children: [
            Text(
              '$_counter',
              style: TextStyle(fontSize: 20.0),
            ),
            FloatingActionButton(onPressed: increment, child: Icon(Icons.add))
          ],
        ),
      ),
    );
  }
}
