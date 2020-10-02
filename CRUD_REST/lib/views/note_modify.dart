import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  final String noteId;
  NoteModify({this.noteId});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(noteId == null ? 'Create Note' : 'Edit Note')),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Note Title',
              ),
            ),
          ),
          Container(
            height: 8,
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Note Content',
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(10, 8, 10, 0),
            child: RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Submit',
                style: TextStyle(color: Colors.white),
              ),
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
