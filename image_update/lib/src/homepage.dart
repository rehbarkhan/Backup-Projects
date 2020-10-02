import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:image_update/model/json_image_model.dart';
import 'dart:convert';
import '../src/imageList.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  List<ImageModel> images = [];

  //parsing the Json Data
  void fetchImage() async {
    counter++;
    var response =
        await get('http://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = new ImageModel.fromJson(json.decode(response.body));
    setState(() {
      images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Image App')),
        floatingActionButton: FloatingActionButton(
          elevation: 5.0,
          onPressed: fetchImage,
          child: Icon(Icons.nature),
          backgroundColor: Colors.green.shade500,
        ),
        body: ListImage(images),
      ),
    );
  }
}
