import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, datetime: DateTime.now()),
    Transaction(
        id: 't2', title: 'XBox S', amount: 299.99, datetime: DateTime.now()),
  ];
  String title;
  String amount;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Expense Monitor')),
          body: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blueAccent,
                  child: Text('Chart'),
                  elevation: 5.0,
                ),
              ),
              Card(
                elevation: 5.0,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                          onChanged: (value) {
                            title = value;
                          },
                          decoration: InputDecoration(labelText: 'Title')),
                      TextField(
                          onChanged: (val) => amount = val,
                          decoration: InputDecoration(labelText: 'Amount')),
                      FlatButton(
                          color: Colors.green.shade400,
                          onPressed: () {
                            print(title + amount);
                          },
                          child: Text(
                            'Add Entry',
                          )),
                    ],
                  ),
                ),
              ),
              Column(
                children: transaction.map((tx) {
                  return Card(
                    margin: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2.0,
                              color: Colors.green.shade300,
                            ),
                          ),
                          margin: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 10),
                          child: Text(
                            '\$' + tx.amount.toString(),
                            style: TextStyle(
                                color: Colors.green.shade700,
                                fontWeight: FontWeight.bold),
                          ),
                          padding: EdgeInsets.all(10.0),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Title Display
                            Text(
                              tx.title,
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.blue.shade500,
                                  fontWeight: FontWeight.bold),
                            ),
                            //Date Display
                            Text(
                              DateFormat.yMMMMEEEEd().format(tx.datetime),
                              style: TextStyle(color: Colors.grey.shade600),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.delete,
                                size: 25.0,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }).toList(),
              )
            ],
          )),
    );
  }
}
