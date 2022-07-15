import 'package:flutter/material.dart';
import 'package:budget_check/models/transactions.dart';
import 'package:date_format/date_format.dart';

class ItemDescriptionBox extends StatelessWidget {
  final Transaction trans;
  ItemDescriptionBox(this.trans);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          // color: Colors.blue,
          padding: EdgeInsets.only(bottom: 5, top: 10, left: 15),
          child: Text(
            trans.title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 10, left: 15),
          child: Text(
            formatDate(trans.dateTime, [d, '-', M, '-', yy]),
            style: TextStyle(fontSize: 12, color: Colors.grey),
          ),
        )
      ],
    );
  }
}
