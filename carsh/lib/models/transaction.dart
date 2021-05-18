import 'package:flutter/foundation.dart';

class Transaction {
  final int id;
  final double value;
  final String title;
  final DateTime date;

  Transaction({
    @required this.id,
    @required this.date,
    @required this.title,
    @required this.value,
  });
}
