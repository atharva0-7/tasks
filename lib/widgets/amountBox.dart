import 'package:budget_check/models/transactions.dart';
import 'package:flutter/material.dart';

class AmountBox extends StatelessWidget {
  final Transaction trans;
  AmountBox(this.trans);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.purpleAccent, width: 2),
        ),
        child: Text(
          "Rs " + trans.price.toStringAsFixed(2),
          style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
        ));
  }
}
