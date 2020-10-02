import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int showdata = 1;
  void show() {
    print('$showdata');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Pics APP')),
        floatingActionButton: FloatingActionButton(
          onPressed: show,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
