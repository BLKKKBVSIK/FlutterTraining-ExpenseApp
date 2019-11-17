import 'package:flutter/material.dart';
import 'package:expense_app/widgets/transaction_list.dart';
import 'package:expense_app/widgets/new_transaction.dart';
import 'package:expense_app/models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: '1',
      title: "Ma premiere depense",
      amount: 12.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: "Ma seconde depense",
      amount: 19.99,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(title: txTitle, amount: txAmount, date: DateTime.now(), id: DateTime.now().toString());


    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      TransactionList(_userTransaction),
    ]);
  }
}