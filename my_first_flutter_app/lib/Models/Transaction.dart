import 'dart:ffi';

class Transaction {
  final String id;
  final String title;
  final double price;
  final DateTime time;

  Transaction({
    required this.id,
    required this.title,
    required this.price,
    required this.time,
  });
}
