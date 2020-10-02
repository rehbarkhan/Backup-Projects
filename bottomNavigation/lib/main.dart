import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import './value.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var value = 'Action';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueAccent,
          body: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30.0),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Colors.blueAccent,
            height: 45.0,
            items: <Widget>[
              Icon(Icons.add, size: 25),
              Icon(Icons.mic, size: 25),
              Icon(Icons.access_time, size: 25),
              Icon(Icons.add_a_photo, size: 25),
            ],
            onTap: (index) {
              setState(() {
                if (index == 0) {
                  value = addition();
                } else if (index == 1) {
                  value = mic();
                } else if (index == 2) {
                  value = clock();
                } else {
                  value = camera();
                }
              });
            },
          ),
        ),
      ),
    );
  }
}
