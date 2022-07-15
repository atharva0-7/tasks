import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../models/transactions.dart';
import 'addTransactions.dart';
import '../widgets/amountBox.dart';
import '../widgets/itemDescriptionBox.dart';

class UserTransaction extends StatelessWidget {
  final List<Transaction> transactions;

  UserTransaction(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty
          ? Center(
              child: Text(
              "No transactions",
              style: TextStyle(fontSize: 20),
            ))
          : ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (ctx, index) {
                return Card(
                  child: Row(children: [
                    AmountBox(transactions[index]),
                    ItemDescriptionBox(transactions[index])
                  ]),
                );
              }),
    );
  }
}
