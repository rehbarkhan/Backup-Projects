import 'package:CRUD_REST/views/note_delete.dart';
import 'package:flutter/material.dart';
import '../models/note_for_listing.dart';
import '../helperClass/helperFunctions.dart';
import './note_modify.dart';

class NoteList extends StatelessWidget {
  //fake REST API Data
  final notes = [
    new NotesListing(
      noteId: "1",
      noteTitle: "Note 1",
      createDateTime: DateTime.now(),
      editDateTime: DateTime.now(),
    ),
    new NotesListing(
      noteId: "2",
      noteTitle: "Note 2",
      createDateTime: DateTime.now(),
      editDateTime: DateTime.now(),
    ),
    new NotesListing(
      noteId: "3",
      noteTitle: "Note 3",
      createDateTime: DateTime.now(),
      editDateTime: DateTime.now(),
    ),
    new NotesListing(
      noteId: "4",
      noteTitle: "Note 4",
      createDateTime: DateTime.now(),
      editDateTime: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD REST API'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => NoteModify(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),

      //listView Builder
      body: ListView.separated(
        separatorBuilder: (_, __) => Divider(height: 5.0, color: Colors.green),
        itemBuilder: (_, index) {
          return Dismissible(
            key: ValueKey(notes[index].noteId),
            direction: DismissDirection.startToEnd,
            onDismissed: (direction) {},
            confirmDismiss: (direction) async {
              final result = await showDialog(
                context: context,
                builder: (context) => NoteDelete(),
              );
              return result;
            },
            child: ListTile(
                title: Text(
                  notes[index].noteTitle,
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                subtitle: Text(
                    "Last Edited on : ${formatDateTime(notes[index].editDateTime)}"),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          NoteModify(noteId: notes[index].noteId)));
                }),
          );
        },
        //item length
        itemCount: notes.length,
      ),
    );
  }
}
