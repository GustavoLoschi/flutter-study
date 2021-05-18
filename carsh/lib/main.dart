import 'package:flutter/material.dart';
import 'package:carsh/components/graphic.dart';
import 'package:carsh/components/transaction_list.dart';
import 'package:carsh/components/transaction_form.dart';
import 'package:carsh/models/transaction.dart';
import 'dart:math';

main() => runApp(Carsh());

class Carsh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _transactions = [
    Transaction(
      id: 0,
      title: 'Gasolina',
      value: 246.83,
      date: DateTime.now(),
    ),
    Transaction(
      id: 1,
      title: 'Pneus',
      value: 1384.99,
      date: DateTime.now(),
    ),
  ];

  _showTransactionFormModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) {
        return TransactionForm(_addNewTransaction);
      },
    );
  }

  _addNewTransaction(String newTitle, double newValue) {
    final Transaction newTransaction = new Transaction(
      id: Random().nextDouble().toInt(),
      date: DateTime.now(),
      title: newTitle,
      value: newValue,
    );

    setState(() {
      _transactions.add(newTransaction);
    });

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _showTransactionFormModal(context),
            ),
          ),
        ],
        title: Center(
          child: Text('CAR\$H'),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Graphic(),
            TransactionList(_transactions),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        child: Icon(Icons.add),
        onPressed: () => _showTransactionFormModal(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
