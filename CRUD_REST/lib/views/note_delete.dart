import 'package:flutter/material.dart';

class NoteDelete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Deleting Note...'),
      content: Text('Are you sure ?'),
      actions: [
        FlatButton(
          child: Text('Yes'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        FlatButton(
          child: Text('No'),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        ),
        FlatButton(
          child: Text('Cool'),
          onPressed: () {
            Navigator.of(context).pop(false);
          },
        )
      ],
    );
  }
}
