import 'package:flutter/material.dart';

import 'transaction_input.dart';
import 'transaction_list.dart';
import '../Transaction.dart';

class ManageTransaction extends StatefulWidget {
  @override
  _ManageTransactionState createState() => _ManageTransactionState();
}

class _ManageTransactionState extends State<ManageTransaction> {
  List<Transaction> transactions = [
    Transaction(
      id: 't1',
      title: 'Shooes',
      amount: 3000,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Grocery',
      amount: 1200,
      date: DateTime.now(),
    ),
  ];

  void _addTransaction(titleInput, amountInput) {
    var newTx = Transaction(
      title: titleInput.text,
      amount: int.parse(amountInput.text),
      date: DateTime.now(),
    );
    setState(() {
      transactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(transactions),
        TransactionInput(_addTransaction),
      ],
    );
  }
}
