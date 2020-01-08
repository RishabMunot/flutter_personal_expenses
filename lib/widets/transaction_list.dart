import 'package:flutter/material.dart';
import 'package:flutter_personal_expenses/Transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {

  final List <Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text('Transaction'),
          ...transactions.map((tx) {
            return Card(
              color: Colors.white,
              margin: EdgeInsets.only(
                top: 5,
                right: 5,
                left: 5,
              ),
              child: Row(
                children: <Widget>[
                  Container(
                    child: Text(
                      '₹${tx.amount}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.purple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2,
                            color: Colors.purple,
                            style: BorderStyle.solid),
                        borderRadius:
                        BorderRadius.all(Radius.circular(2))),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        tx.title.toString(),
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        DateFormat("MMM dd, yyyy").format(tx.date),
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ],
              ),
            );
          }).toList()
        ],
      ),
    );
  }
}
