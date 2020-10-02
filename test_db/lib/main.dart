import 'package:flutter/material.dart';
import 'package:mysql1/mysql1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void db_connect() async {
    var settings = new ConnectionSettings(
      host: '127.0.0.1',
      //port: 3306,
      //port: 3306,
      user: 'root',
      password: 'Rehbar@1995',
      db: 'test_db',
    );
    var conn = await MySqlConnection.connect(settings);
    //print(conn);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('DB Connect')),
        floatingActionButton: FloatingActionButton(
          onPressed: db_connect,
          child: Icon(Icons.data_usage),
        ),
      ),
    );
  }
}
