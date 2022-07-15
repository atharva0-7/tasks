import 'package:budget_check/presentation/addTransactions.dart';
import 'package:budget_check/widgets/amountBox.dart';
import 'package:budget_check/widgets/itemDescriptionBox.dart';
import 'package:budget_check/presentation/userTransaction.dart';

import 'models/transactions.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Transaction> _transactions = [];

  void _addTransaction(String title, int amount) {
    final transactionTx =
        Transaction(dateTime: DateTime.now(), price: amount, title: title);

    setState(() {
      _transactions.add(transactionTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Budget Check"),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text('CHART!'),
                  elevation: 5,
                ),
              ),
              UserTransaction(_transactions),
            ],
          ),
        ),
        floatingActionButton: Builder(
          builder: (context) => FloatingActionButton(
              elevation: 20,
              child: Icon(Icons.add),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return AddTransaction(_addTransaction);
                    });
              }),
        ),
      ),
    );
  }
}
