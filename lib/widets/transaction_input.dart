import 'package:flutter/material.dart';

import '../Transaction.dart';

class TransactionInput extends StatelessWidget {
  final titleInput = TextEditingController();
  final amountInput = TextEditingController();

  final addTransaction;

  TransactionInput(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(
            labelText: 'title',
          ),
          controller: titleInput,
        ),
        TextField(
          decoration: InputDecoration(
            labelText: 'amount',
          ),
          controller: amountInput,
        ),
        FlatButton(
          child: Text('Add Transaction'),
          onPressed: (){
            addTransaction(titleInput,amountInput);
          },
        )
      ],
    );
  }
}
