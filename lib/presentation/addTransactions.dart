import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  final Function _addTransaction;
  AddTransaction(this._addTransaction);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();
    String inputAmount = "";
    return Container(
      padding: EdgeInsets.all(10),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                  hintText: "Item name", hintStyle: TextStyle(fontSize: 15)),
            ),
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                  hintText: "Amount", hintStyle: TextStyle(fontSize: 15)),
            ),
            FlatButton(
                onPressed: () {
                  _addTransaction(
                      titleController.text, int.parse(amountController.text));
                },
                child: Text(
                  "Add Transaction",
                  style: TextStyle(color: Colors.blue),
                ))
          ],
        ),
      ),
    );
  }
}
