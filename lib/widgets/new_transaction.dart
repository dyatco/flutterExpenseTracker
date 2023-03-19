import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        // Add Transaction Button
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            // Title textfield
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              // fires for every keystroke
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            // Amount textfield
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              // onChanged: (value) {
              //   amountInput = value;
              // },
            ),
            TextButton(
              child: Text('Add Transaction'),
              onPressed: () {
                addTx(titleController.text, double.parse(amountController.text));
              },
              style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}